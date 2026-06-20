-- ==========================================
-- Exercise 3 : Stored Procedures
-- ==========================================



-- ==========================================
-- Scenario 1
-- Process Monthly Interest (1%)
-- ==========================================

CREATE OR REPLACE PROCEDURE
ProcessMonthlyInterest

AS

BEGIN

UPDATE Accounts

SET Balance =
Balance + (Balance * 0.01)

WHERE AccountType =
'SAVINGS';

COMMIT;

DBMS_OUTPUT.PUT_LINE(
'Monthly interest processed.'
);

END;
/




-- Execute

BEGIN
ProcessMonthlyInterest;
END;
/




-- ==========================================
-- Scenario 2
-- Update Employee Bonus
-- ==========================================

CREATE OR REPLACE PROCEDURE
UpdateEmployeeBonus(

p_department
VARCHAR2,

p_bonus_percent
NUMBER

)

AS

BEGIN

UPDATE Employees

SET Salary =

Salary +

(
Salary *
p_bonus_percent
/
100
)

WHERE Department =

p_department;

COMMIT;

DBMS_OUTPUT.PUT_LINE(
'Employee bonus updated.'
);

END;
/




-- Execute

BEGIN

UpdateEmployeeBonus(
'IT',
10
);

END;
/




-- ==========================================
-- Scenario 3
-- Transfer Funds
-- ==========================================

CREATE OR REPLACE PROCEDURE
TransferFunds(

p_from_account NUMBER,

p_to_account NUMBER,

p_amount NUMBER

)

AS

v_balance NUMBER;

BEGIN


SELECT Balance

INTO v_balance

FROM Accounts

WHERE AccountID =
p_from_account;



IF v_balance >= p_amount THEN


UPDATE Accounts

SET Balance =

Balance - p_amount

WHERE AccountID =
p_from_account;



UPDATE Accounts

SET Balance =

Balance + p_amount

WHERE AccountID =
p_to_account;



COMMIT;

DBMS_OUTPUT.PUT_LINE(
'Transfer successful.'
);


ELSE

DBMS_OUTPUT.PUT_LINE(
'Insufficient balance.'
);

END IF;

END;
/




-- Execute

BEGIN

TransferFunds(
101,
102,
500
);

END;
/