-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

.schema

-- INSERT INTO Loans
-- (BookID, PatronID, LoanDate, DueDate)
-- VALUES (
--   (select BookID from books where Barcode = 2855934983), 
--   (select PatronID from Patrons where Email = 'jvaan@wisdompets.com'), 
--   'August 25, 2022', 
--   'September 8, 2022'),
--   (  (select BookID from books where Barcode = 4043822646), 
--   (select PatronID from Patrons where Email = 'jvaan@wisdompets.com'), 
--   'August 25, 2022', 
--   'September 8, 2022');


-- UPDATE Loans 
-- SET LoanDate = '2022-08-25', DueDate = '2022-09-08'
-- where LoanID in (2001, 2002);

  select * from Loans
  join Patrons
  on Loans.PatronID = Patrons.PatronID
  where Patrons.Email = 'jvaan@wisdompets.com';