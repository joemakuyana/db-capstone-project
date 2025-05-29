DELIMITER //

CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    -- First, check if the order exists
    DECLARE order_exists INT;
    SELECT COUNT(*) INTO order_exists FROM Orders WHERE OrderID = order_id;
    
    IF order_exists > 0 THEN
        -- Delete the order
        DELETE FROM Orders WHERE OrderID = order_id;
        SELECT CONCAT('Order ', order_id, ' is cancelled') AS Confirmation;
    ELSE
        SELECT CONCAT('Order ', order_id, ' does not exist') AS Confirmation;
    END IF;
END //

DELIMITER ;