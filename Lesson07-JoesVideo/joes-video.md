# Joe's Video Store Normalization

## Video Rentals View
### 0NF:
**TransactionId**,CustomerId,Phone,Date,Name,Address,(VideoId,CopyNumber,Title,ReturnDate,RentalCharge),SubTotal,GST,Total
### 1NF:
**TransactionId**,CustomerId,Phone,Date,FirstName,LastName,Address,City,Province,PostalCode,SubTotal,GST,Total

***TransactionId***,**VideoId**,**CopyNumber**,Title,ReturnDate,RentalCharge
### 2NF:
**TransactionId**,CustomerId,Phone,Date,FirstName,LastName,Address,City,Province,PostalCode,SubTotal,GST,Total

***TransactionId***,***VideoId***,**CopyNumber**,ReturnDate,HistoricalRentalCharge

**VideoId**,Title,CurrentRentalCharge
### 3NF:
Transaction:<br>
**TransactionId**,_CustomerId_,Date,SubTotal,GST,Total

Customer:<br>
**CustomerId**,FirstName,LastName,Phone,Address,City,Province,PostalCode

TransactionVideo:<br>
***TransactionId***,***VideoId***,**CopyNumber**,ReturnDate,HistoricalRentalCharge

Video:<br>
**VideoId**,Title,CurrentRentalCharge

## Videos View
### 0NF:
**VideoId**,Title,TypeId,TypeName,TotalCopies,Format,Cost,TypeName,CopiesAvailable,CurrentRentalCharge,RatingCode,RatingDescription,(CopyNumber,AvailableForRental)

### 1NF:
**VideoId**,Title,TypeId,TypeName,TotalCopies,Format,Cost,TypeName,CopiesAvailable,CurrentRentalCharge,RatingCode,RatingDescription

***VideoId***,**CopyNumber**,AvailableForRental

### 2NF:
**VideoId**,Title,TypeId,TypeName,TotalCopies,Format,Cost,TypeName,CopiesAvailable,CurrentRentalCharge,RatingCode,RatingDescription

***VideoId***,**CopyNumber**,AvailableForRental

### 3NF:
Video:<br>
**VideoId**,Title,_TypeId_,TotalCopies,_FormatID_,Cost,CopiesAvailable,CurrentRentalCharge,_RatingCode_

Type:<br>
**TypeId**,TypeName

Rating:<br>
**RatingCode**,RatingDescription

Format:<br>
**FormatID**,FormatDescription

VideoCopy:<br>
***VideoId***,**CopyNumber**,AvailableForRental

## Merge:
Transaction:<br>
**TransactionId**,_CustomerId_,Date,SubTotal,GST,Total

Customer:<br>
**CustomerId**,FirstName,LastName,Phone,Address,City,Province,PostalCode

TransactionVideo:<br>
***TransactionId***,***VideoId***,**CopyNumber**,ReturnDate,HistoricalRentalCharge

Video:<br>
**VideoId**,Title,_TypeId_,TotalCopies,_FormatID_,Cost,CopiesAvailable,CurrentRentalCharge,_RatingCode_

Type:<br>
**TypeId**,TypeName

Rating:<br>
**RatingCode**,RatingDescription

Format:<br>
**FormatID**,FormatDescription

VideoCopy:<br>
***VideoId***,**CopyNumber**,AvailableForRental