
-- /////////////// Create EMPLOYEES Mysql Database //////////////////////

-- //////////// 1. Stored Pro //////////////////////

DELIMITER //

CREATE PROCEDURE RETRIEVE_ALL()

BEGIN
   SELECT *  FROM PETSALE;
END //
DELIMITER ;


CALL RETRIEVE_ALL;



DROP PROCEDURE RETRIEVE_ALL;
CALL RETRIEVE_ALL;

-- //////////// 2. Stored Pro //////////////////////

DELIMITER @
CREATE PROCEDURE UPDATE_SALEPRICE (IN Animal_ID INTEGER, IN Animal_Health VARCHAR(5))
BEGIN
    IF Animal_Health = 'BAD' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
        WHERE ID = Animal_ID;
    ELSEIF Animal_Health = 'WORSE' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
        WHERE ID = Animal_ID;
    ELSE
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE
        WHERE ID = Animal_ID;
    END IF;
END @

DELIMITER ;



   CALL RETRIEVE_ALL;
   CALL UPDATE_SALEPRICE(1, 'BAD');
   CALL RETRIEVE_ALL;


   CALL RETRIEVE_ALL;
   CALL UPDATE_SALEPRICE(3, 'WORSE');
   CALL RETRIEVE_ALL;

   DROP PROCEDURE UPDATE_SALEPRICE;
   CALL UPDATE_SALEPRICE;
   
-- //////////// Practice  //////////////////////

