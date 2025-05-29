PREPARE GetOrderDetail FROM '
    SELECT OrderID, Quantity, TotalCost 
    FROM Orders 
    JOIN Bookings  ON BookingID = BookingID
    WHERE CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;
