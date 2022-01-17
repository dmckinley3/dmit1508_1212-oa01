# ESP 2 - Normalization

## Payment Log View
### 0NF:
**OrderNumber(PK),CustomerName,CustomerNumber,OrderDate,OrderTotal,(PaymentDate,PaymentAmount,PaymentNumber,BalanceOwing,PaymentType,DepositBatchNumber)
### 1NF:
**OrderNumber(PK)**,FirstName,LastName,CustomerNumber,OrderDate,OrderTotal

***OrderNumber(FK)(PK)***,**PaymentNumber(PK)**,PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumber

### 2NF:
*OrderNumber(PK)**,FirstName,LastName,CustomerNumber,OrderDate,OrderTotal

***OrderNumber(FK)(PK)***,**PaymentNumber(PK)**,PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumbe
### 3NF:
Order:<br>
**OrderNumber(PK)**,OrderDate,OrderTotal,_CustomerNumber(FK)_

Customer:<br>
**CustomerNumber(PK)**,FirstName,LastName

OrderPayment:<br>
***OrderNumber(FK)(PK)***,**PaymentNumber(PK)**,PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumber

![esp2](images/esp2.jpg)
## Merge: ESP 1 + ESP 2
Order:<br>
**OrderNumber(PK)**,OrderDate,Subtotal,GST,OrderTotal,CustomerNumber(FK)

Customer:<br>
**CustomerNumber(PK)**,FirstName,LastName,Address,City,Province,PostalCode,Phone

OrderItem:<br>
OrderNumber(PK)(FK),ItemNumber(PK)(FK),Quantity,SellingPrice,Amount

Item:<br>
ItemNumber(PK),Description,InventoryPrice

OrderPayment:<br>
OrderNumber(FK)(PK),PaymentNumber(PK),PaymentDate,PaymentAmount,BalanceOwing,PaymentType,DepositBatchNumber

![esp2-merged](images/esp2-merged.jpg)