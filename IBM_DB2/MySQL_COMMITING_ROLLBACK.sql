
-- /////////////// Create EMPLOYEES Mysql Database //////////////////////

-- //////////// 1. COMMITING_ROLLBACK//////////////////////

  DELIMITER //

CREATE PROCEDURE TRANSACTION_ROSE()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;
    START TRANSACTION;
    UPDATE BankAccounts
    SET Balance = Balance-200
    WHERE AccountName = 'Rose';

    UPDATE BankAccounts
    SET Balance = Balance+200
    WHERE AccountName = 'Shoe Shop';

    UPDATE ShoeShop
    SET Stock = Stock-1
    WHERE Product = 'Boots';

    UPDATE BankAccounts
    SET Balance = Balance-300
    WHERE AccountName = 'Rose';

    COMMIT;
END //

DELIMITER ;




CALL TRANSACTION_ROSE;
SELECT * FROM BankAccounts;
SELECT * FROM ShoeShop;



-- //////////// Practice  //////////////////////

DELIMITER //

CREATE PROCEDURE TRANSACTION_JAMES()

BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;

    UPDATE BankAccounts
    SET Balance = Balance-1200
    WHERE AccountName = 'James';

    UPDATE BankAccounts
    SET Balance = Balance+1200
    WHERE AccountName = 'Shoe Shop';

    UPDATE ShoeShop
    SET Stock = Stock-4
    WHERE Product = 'Trainers';

    UPDATE BankAccounts
    SET Balance = Balance-150
    WHERE AccountName = 'James';

    COMMIT;

END //

DELIMITER ; 