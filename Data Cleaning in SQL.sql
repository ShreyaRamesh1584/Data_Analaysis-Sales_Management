--Cleaning Data in SQL Query

select *
from [Nashville_Housing ]
--where PropertyAddress is null (no output program successful)

select SaleDate, convert(Date, SaleDate)
from [Nashville_Housing ]

Alter table [Nashville_Housing ]
add saledate_converted date 

Update [Nashville_Housing ]
set saledate_converted=convert(date, SaleDate)

select saledate_converted
from [Nashville_Housing ]

--Populate Property Address Data
select *
from [Nashville_Housing ]
--where PropertyAddress is null
order by ParcelID

Select a.[UniqueID ], a.ParcelID, b.[UniqueID ], b.ParcelID, b.PropertyAddress, isnull(a.PropertyAddress, b.PropertyAddress) 
from [Nashville_Housing ] a
join [Nashville_Housing ] b
	on a.ParcelID=b.ParcelID
	and a.[UniqueID ]<>b.[UniqueID ]
where a.PropertyAddress is null 

Update a
set PropertyAddress=isnull(a.PropertyAddress, b.PropertyAddress)
from [Nashville_Housing ] a
join [Nashville_Housing ] b
	on a.ParcelID=b.ParcelID
	and a.[UniqueID ]<>b.[UniqueID ]

--Breaking out the address into Individual Columns (Address, City, State)
select PropertyAddress
from [Nashville_Housing ]

select
substring(PropertyAddress, 1, CHARINDEX(',',PropertyAddress)-1) as Address,
substring(PropertyAddress, CHARINDEX(',',PropertyAddress)+1, len(PropertyAddress)) as City
from [Nashville_Housing ]

Alter table [Nashville_Housing ]
add Propertysplitaddress nvarchar(255) 

Update [Nashville_Housing ]
set Propertysplitaddress=substring(PropertyAddress, 1, CHARINDEX(',',PropertyAddress)-1)

Alter table [Nashville_Housing ]
add PropertysplitCity nvarchar(255)

Update [Nashville_Housing ]
set PropertysplitCity=substring(PropertyAddress, CHARINDEX(',',PropertyAddress)+1, len(PropertyAddress))

select Propertysplitaddress, PropertysplitCity
from [Nashville_Housing ]

select OwnerAddress
from [Nashville_Housing ]

select 
PARSENAME(replace(OwnerAddress, ',', '.'),3) as Address_name,
PARSENAME(replace(OwnerAddress, ',', '.'),2) as City_name,
PARSENAME(replace(OwnerAddress, ',', '.'),1) as State_name
from [Nashville_Housing ]

Alter table [Nashville_Housing ]
add OwnersplitAddress nvarchar(255)

Update [Nashville_Housing ]
set OwnersplitAddress=PARSENAME(replace(OwnerAddress, ',', '.'),3)

Alter table [Nashville_Housing ]
add OwnersplitCity nvarchar(255)

Update [Nashville_Housing ]
set OwnersplitCity=PARSENAME(replace(OwnerAddress, ',', '.'),2)

Alter table [Nashville_Housing ]
add OwnersplitState nvarchar(255)

Update [Nashville_Housing ]
set OwnersplitState=PARSENAME(replace(OwnerAddress, ',', '.'),1)


--Changing the Y and N to Yes and No in SoldAsVacant

select distinct(SoldAsVacant), count(SoldAsVacant)
from [Nashville_Housing ]
group by SoldAsVacant
order by 2

select SoldAsVacant,
case when SoldAsVacant = 'Y' then 'yes' 
	 when SoldAsVacant = 'N' then 'No'
	 else SoldAsVacant 
end 
from [Nashville_Housing ]

update [Nashville_Housing ]
set SoldAsVacant= case when SoldAsVacant = 'Y' then 'yes' 
	 when SoldAsVacant = 'N' then 'No'
	 else SoldAsVacant 
end 
from [Nashville_Housing ]

--select SoldAsVacant
--from [Nashville_Housing ]

--Deleting Unused Colums
select *
from [Nashville_Housing ]

Alter table [Nashville_Housing ]
drop column PropertyAddress, OwnerAddress, TaxDistrict

Alter table [Nashville_Housing ]
drop column SaleDate
