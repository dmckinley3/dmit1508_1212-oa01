# ESP 3 - Normalization

## Inventory View
### 0NF:
**ItemNumber(PK)**,Description,CurrentPrice,(Date,SupplierNumber,PONumber,Quantity,Cost)
### 1NF:
**ItemNumber(PK)**,Description,CurrentPrice

***ItemNumber(FK)(PK)***,**PONumber(PK)**,Date,SupplierNumber,Quantity,Cost

### 2NF:
**ItemNumber(PK)**,Description,CurrentPrice

***ItemNumber(FK)(PK)***,***PONumber(PK)(FK)***,Quantity,Cost

**PONumber(PK)**,Date,SupplierNumber

### 3NF:
Item:<br>
**ItemNumber(PK)**,Description,CurrentPrice

PurchaseOrderItem:<br>
***ItemNumber(FK)(PK)***,***PONumber(PK)(FK)***,Quantity,Cost

PurchaseOrder:<br>
**PONumber(PK)**,Date,SupplierNumber

![esp3-inventory](images/esp3-inventory.jpg)

## Purchase Order View
### 0NF:

### 1NF:

### 2NF:

### 3NF:

## Merge: ESP1+2 + ESP 3
