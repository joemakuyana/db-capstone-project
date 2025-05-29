DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS 'Max Quantity in Order'
    FROM Orders;
END //

DELIMITER ;

-- To call the procedure:
CALL GetMaxQuantity();