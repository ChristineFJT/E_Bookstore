USE E_BOOKSTORE

-- 1. List the book(s) with the highest rating.
SELECT b.BookID, b.Book_Name, AVG(f.Rating_Score) AS Average_Rating
FROM Feedback f
JOIN Shopping_Cart_Item sci ON f.ItemID = sci.ItemID
JOIN Bookstore b ON sci.BookID = b.BookID
GROUP BY b.BookID, b.Book_Name
HAVING AVG(f.Rating_Score) = (
    SELECT MAX(Average_Rating)
    FROM (
        SELECT AVG(f.Rating_Score) AS Average_Rating
        FROM Feedback f
        JOIN Shopping_Cart_Item sci ON f.ItemID = sci.ItemID
        GROUP BY sci.BookID
    ) AS AvgRatings
);




-- 2. Find the total number of feedback per member. Show member id, member name, and total number of feedback per member.
SELECT m.MemberID, m.Mem_Name, COUNT(f.FeedbackID) AS Total_Feedbacks
FROM Member m
LEFT JOIN Feedback f ON m.MemberID = f.MemberID
GROUP BY m.MemberID, m.Mem_Name;


-- 3. Find the total number of book published by each publisher. Show publisher id, publisher name, and number of book published.
SELECT p.PublisherID, p.Pub_Name, COUNT(b.BookID) AS Total_Books_Published
FROM Publisher p
LEFT JOIN Bookstore b ON p.PublisherID = b.PublisherID
GROUP BY p.PublisherID, p.Pub_Name;


-- 4. Find the total number of books ordered by store manager from each publisher.
SELECT p.PublisherID, p.Pub_Name, SUM(bo.Purchase_Quantity) AS Total_Books_Ordered
FROM Publisher p
LEFT JOIN Bookstore_Order bo ON p.PublisherID = bo.PublisherID
GROUP BY p.PublisherID, p.Pub_Name;


-- 5. From the book table, list the books where quantity is more than the average quantity of all books. 
SELECT b.BookID, b.Book_Name, b.Book_Quantity
FROM Bookstore b
WHERE b.Book_Quantity > (
    SELECT AVG(Book_Quantity)
    FROM Bookstore
);

-- 6. Find the bestselling book(s).
SELECT b.BookID, b.Book_Name, SUM(sci.Item_Quantity) AS Total_Sold
FROM Shopping_Cart_Item sci
JOIN Bookstore b ON sci.BookID = b.BookID
GROUP BY b.BookID, b.Book_Name
HAVING SUM(sci.Item_Quantity) = (
    SELECT MAX(Total_Sold)
    FROM (
        SELECT SUM(Item_Quantity) AS Total_Sold
        FROM Shopping_Cart_Item
        GROUP BY BookID
    ) AS Sales
);


-- 7. Show the member(s) who spent most on buying books.
SELECT m.MemberID, m.Mem_Name, SUM(b.Price_Per_Book * sci.Item_Quantity) AS Total_Spent
FROM Member m
INNER JOIN Shopping_Cart sc ON m.MemberID = sc.MemberID
INNER JOIN Shopping_Cart_Item sci ON sc.CartID = sci.CartID
INNER JOIN Bookstore b ON sci.BookID = b.BookID
WHERE sc.Payment_Status = 'Paid'
GROUP BY m.MemberID, m.Mem_Name
HAVING SUM(b.Price_Per_Book * sci.Item_Quantity) = (
    SELECT MAX(Total_Spent)
    FROM (
        SELECT SUM(b.Price_Per_Book * sci.Item_Quantity) AS Total_Spent
        FROM Shopping_Cart_Item sci
        JOIN Shopping_Cart sc ON sci.CartID = sc.CartID
        JOIN Bookstore b ON sci.BookID = b.BookID
        WHERE sc.Payment_Status = 'Paid'
        GROUP BY sc.MemberID
    ) AS Spending
);



-- 8. Show the member(s) who had not make any order
SELECT Shopping_Cart.MemberID, Member.Mem_Name
FROM ((Shopping_Cart
INNER JOIN Member ON Shopping_Cart.MemberID = Member.MemberID)
FULL OUTER JOIN Shopping_Cart_Item ON Shopping_Cart.CartID = Shopping_Cart_Item.CartID)
WHERE Shopping_Cart.CartID NOT IN (SELECT CartID FROM Shopping_Cart_Item) 
AND Shopping_Cart.Payment_Status = 'Not Paid'
GROUP BY Shopping_Cart.MemberID, Member.Mem_Name;





-- 9. A list of purchased books that have not been delivered to members. The list should show member identification number, address, contact number, book serial number, book title, quantity, date and status of delivery.
SELECT m.MemberID, m.Mem_Address, m.Mem_Contact_Number, b.BookID, b.Book_Name, sci.Item_Quantity, pd.Date_Purchased, pd.Cart_Delivery_Status
FROM Payment_Detail pd
JOIN Shopping_Cart sc ON pd.CartID = sc.CartID
JOIN Shopping_Cart_Item sci ON sc.CartID = sci.CartID
JOIN Bookstore b ON sci.BookID = b.BookID
JOIN Member m ON sc.MemberID = m.MemberID
WHERE pd.Cart_Delivery_Status = 'NOT Arrived';


-- 10. Show the members who made more than 2 orders.
SELECT m.MemberID, m.Mem_Name, COUNT(sc.CartID) AS Total_Orders
FROM Member m
JOIN Shopping_Cart sc ON m.MemberID = sc.MemberID
WHERE sc.Payment_Status = 'Paid'
GROUP BY m.MemberID, m.Mem_Name
HAVING COUNT(sc.CartID) > 2;


