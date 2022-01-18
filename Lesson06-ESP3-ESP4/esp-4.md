# ESP 4 - Normaliztion

## Cheque Register View
### 0NF:
0NF:
**ChequeNumber(PK)**,Date,ChequeAmount,SupplierNumber,SupplierName,(PONumber,PODate)

### 1NF:
**ChequeNumber(PK)**,Date,ChequeAmount,SupplerNumber,SupplierName

**PONumber(PK)**,_ChequeNumber(FK)_,PODate

### 2NF:
**ChequeNumber(PK)**,Date,ChequeAmount,SupplerNumber,SupplierName

**PONumber(PK)**,_ChequeNumber(FK)_,PODate
### 3NF:
Cheque:<br>
**ChequeNumber(PK)**,Date,ChequeAmount,_SupplerNumber(FK)_

Supplier:<br>
**SupplerNumber(PK)**,SupplierName

PurchaseOrder:<br>
**PONumber(PK)**,_ChequeNumber(FK)_,PODate

![esp4-cheque](images/esp4-cheque.jpg)

## Merge: ESP1+2+3 + ESP 4
_Complete the final merge with the knowledge you gained._

_Complete the final ERD with the knowledge you have so far._

![esp-draft-final-merge](images/esp-draft-final-merge.jpg)