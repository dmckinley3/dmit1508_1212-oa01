--1. To be fair to all students, a student can only belong to a maximum of 3
--   clubs. Create a trigger to enforce this rule.


--2. The Education Board is concerned with rising course costs! Create a
--   trigger to ensure that a course cost does not get increased by more
--   than 20% at any one time.


--3. Too many students owe us money and keep registering for more courses!
--   Create a trigger to ensure that a student cannot register for any more
--   courses if they have a balance owing of >$500.


--4. Our school DBA has suddenly become allergic to Foreign Key constraints
--   and has disabled them in the database! Create a trigger on the
--   Registration table to ensure that only valid StudentID’s and OfferingCode’s
--   are used for Registration records. Try and have the trigger raise an
--   error for each foreign key that is not valid. If you have trouble with
--   this question create the trigger so it just checks for a valid StudentID.


--5. Contrary to the advice of the school doctor, the DBA still thinks he is
--   allergic to Foreign Key constraints! Yikes! Create a trigger on the
--   Student table that will ensure that we do not delete any students that
--   have made payments, have Registration records, or belong to any clubs.


--6. Not only has the school DBA come down with some mysterious allergy but
--   our network security officer suspects our system has a virus that is
--   allowing students to alter their Balance Owing! To track down what is
--   happening, we want to create a logging table that will log any changes
--   to the BalanceOwing in the student table. You must create the logging
--   table and the trigger to populate it when a balance owing is updated.
/*
        +---------------------------+
        |      BalanceOwingLog      |
        +------------+--------------+
        | (PK)LogID  |      INT     |
        |------------+--------------|
        | StudentID  |      INT     |
        | UpdatedOn  |   DATETIME   |
        | OldBalance | DECIMAL(7,2) |
        | NewBalance | DECIMAL(7,2) |
        +------------+--------------+

*/


--7. We have learned it is a bad idea to update primary keys. Yet someone
--   keeps trying to update the Club tables ClubID column and the Course
--   tables CourseID column! Create triggers to stop this from happening!
--   You are authorized to use whatever force is necessary! Well, in your
--   triggers, anyways!