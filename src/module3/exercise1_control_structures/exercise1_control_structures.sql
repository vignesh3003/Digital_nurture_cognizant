-- ==========================================
-- Exercise 1 : Control Structures
-- ==========================================



-- Scenario 1
-- Apply 1% discount to loan interest
-- for customers above 60 years

DECLARE

CURSOR customer_cursor IS
SELECT CustomerID, Age
FROM Customers;

BEGIN

FOR cust IN customer_cursor LOOP

IF cust.Age > 60 THEN

UPDATE Loans

SET InterestRate =
InterestRate - 1

WHERE CustomerID =
cust.CustomerID;

END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(
'Discount applied successfully.'
);

END;
/




-- ==========================================



-- Scenario 2
-- Promote customers to VIP
-- if balance > 10000

DECLARE

CURSOR vip_cursor IS

SELECT CustomerID,
Balance

FROM Customers;

BEGIN

FOR cust IN vip_cursor LOOP

IF cust.Balance > 10000 THEN

UPDATE Customers

SET IsVIP =
'TRUE'

WHERE CustomerID =
cust.CustomerID;

END IF;

END LOOP;

COMMIT;

DBMS_OUTPUT.PUT_LINE(
'VIP status updated.'
);

END;
/




-- ==========================================



-- Scenario 3
-- Send reminders for loans
-- due within next 30 days

DECLARE

CURSOR reminder_cursor IS

SELECT
c.Name,
l.DueDate

FROM Customers c

JOIN Loans l

ON c.CustomerID =
l.CustomerID

WHERE l.DueDate
BETWEEN
SYSDATE
AND
SYSDATE + 30;

BEGIN

FOR rec IN reminder_cursor LOOP

DBMS_OUTPUT.PUT_LINE(

'Reminder: '

|| rec.Name

|| ' your loan is due on '

|| rec.DueDate

);

END LOOP;

END;
/