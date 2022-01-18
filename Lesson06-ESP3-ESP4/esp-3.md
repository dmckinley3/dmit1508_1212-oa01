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

## Merge ESP1+2 with Inventory Control View
Order:<br>
**OrderNumber(PK)**,OrderDate,Subtotal,GST,OrderTotal,_CustomerNumber(FK)_

Customer:<br>
**CustomerNumber(PK)**,FirstName,LastName,Address,City,Province,PostalCode,Phone

OrderItem:<br>
***OrderNumber(PK)(FK)***,***ItemNumber(PK)(FK)***,Quantity,SellingPrice,Amount

PurchaseOrderItem:<br>
***ItemNumber(FK)(PK)***,***PONumber(PK)(FK)***,Quantity,Cost

Item:<br>
**ItemNumber(PK)**,Description,InventoryPrice

OrderPayment:<br>
***OrderNumber(FK)(PK)***,**PaymentNumber(PK)**,PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumber

PurchaseOrder:<br>
**PONumber(PK)**,Date,SupplierNumber

![esp1+2-merge-inventory](images/esp1+2-merge-inventory.jpg)

## Purchase Order View
### 0NF:
**PurchaseOrderNumber(PK)**,SupplierName,SupplierNumber,SupplierAddress,SupplierCity,SupplierPhone,Date,(ItemNumber,SupplierItemNumber,SupplierItemDescription,Qty,Cost,Amount),SubTotal,GST,Total
### 1NF:
**PurchaseOrderNumber(PK)**,SupplierName,SupplierNumber,SupplierAddress,SupplierCity,Supplierprovince,SupplierPostalCode,SupplierPhone,Date,SubTotal,GST,Total

***PurchaseOrderNumber(FK)(PK)***,**ItemNumber(PK)**,SupplierItemNumber,SupplierItemDescription,Qty,Cost,Amount

### 2NF:
**PurchaseOrderNumber(PK)**,SupplierName,SupplierNumber,SupplierAddress,SupplierCity,SupplierProvince,SupplierPostalCode,SupplierPhone,Date,SubTotal,GST,Total

***PurchaseOrderNumber(FK)(PK)***,**ItemNumber(PK)**,SupplierItemNumber,SupplierItemDescription,Qty,Cost,Amount

### 3NF:
PurchaseOrder:<br>
**PurchaseOrderNumber(PK)**,_SupplierNumber(FK)_,Date,SubTotal,GST,Total

Supplier:<br>
**SupplierNumber(PK)**,SupplierName,SupplierAddress,SupplierCity,SupplierProvince,SupplierPostalCode,SupplierPhone

PurchaseOrderItem:<br>
***PurchaseOrderNumber(FK)(PK)***,**ItemNumber(PK)**,SupplierItemNumber,SupplierItemDescription,Qty,Cost,Amount

![esp3-purchase-order](images/esp3-purchase-order.jpg)

## Merge: ESP1+2 + ESP 3
Order:<br>
**OrderNumber(PK)**,OrderDate,Subtotal,GST,OrderTotal,_CustomerNumber(FK)_

Customer:<br>
**CustomerNumber(PK)**,FirstName,LastName,Address,City,Province,PostalCode,Phone

OrderItem:<br>
***OrderNumber(PK)(FK)***,***ItemNumber(PK)(FK)***,Quantity,SellingPrice,Amount

PurchaseOrderItem:<br>
***PurchaseOrderNumber(FK)(PK)***,***ItemNumber(FK)(PK)***,SupplierItemNumber,SupplierItemDescription,Quantity,Cost,Amount

Item:<br>
**ItemNumber(PK)**,Description,InventoryPrice

OrderPayment:<br>
***OrderNumber(FK)(PK)***,**PaymentNumber(PK)**,PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumber

PurchaseOrder:<br>
**PONumber(PK)**,_SupplierNumber(FK)_,Date,SubTotal,GST,Total

Supplier:<br>
**SupplierNumber(PK)**,SupplierName,SupplierAddress,SupplierCity,SupplierProvince,SupplierPostalCode,SupplierPhone

![esp3-merge](images/esp3-merge.jpg)