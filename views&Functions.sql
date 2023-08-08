GO
USE WebChatApplication ;
GO

--C) Views
--1| Show all users data
CREATE VIEW UsersInfo AS
SELECT UserId, FirstName, LastName, sex
FROM Users;

select * from UsersInfo 
GO

--------------------------------------

--2| Show all chatrooms information
CREATE VIEW RoomInfo AS
SELECT RoomId, [Name]
FROM Room;

select * from RoomInfo
GO

-------------------------------------------

--3| Show all logged users' data joining the users' table, room table, and LoggedInUser table
CREATE VIEW LoggedInUsersInfo AS
SELECT u.UserId, u.FirstName, u.LastName, r.RoomId, r.[Name]
FROM LoggedInUser lu
INNER JOIN Users u ON lu.UserId = u.UserId
INNER JOIN Room r ON lu.RoomId = r.RoomId;

select *from LoggedInUsersInfo
GO

--------------------------------------------

--4| Create a view that shows message Id, sender Id, ToUser Id, room Id,Time Stamp and txt
CREATE VIEW MessageInfo AS
SELECT m.MessegeId, m.RoomId, m.SenderId, m.ToUserId, m.[Text], m.[TimeStamp]
FROM Messege m
INNER JOIN Users u1 ON m.SenderId = u1.UserId
INNER JOIN Users u2 ON m.ToUserId = u2.UserId;

select *from MessageInfo
GO

--------------------------------------------------------------

--5| Create a view that shows all rooms and counts the number of messages in each room 
CREATE VIEW RoomMessageCount AS
SELECT r.RoomId, r.[Name], COUNT(m.MessegeId) AS MessageCount
FROM Room r
LEFT JOIN Messege m ON r.RoomId = m.RoomId
GROUP BY r.RoomId, r.[Name];

select * from RoomMessageCount
GO

----------------------------------------

--6| Create a view that shows users and counts the number of messages each user sent
CREATE VIEW UserMessageCount AS
SELECT u.UserId, u.FirstName, u.LastName, COUNT(m.MessegeId) AS MessageCount
FROM Users u
LEFT JOIN Messege m ON u.UserId = m.SenderId
GROUP BY u.UserId, u.FirstName, u.LastName;

select * from UserMessageCount
GO

--D) Functions

--1|Get the user's full name by entering the user ID
CREATE FUNCTION GetUserFullName(@UserId int) 
RETURNS varchar(200)
AS
BEGIN
    DECLARE @FullName varchar(200)
    
    SELECT @FullName = FirstName + ' ' + LastName
    FROM [Users]
    WHERE UserId = @UserI
    RETURN @FullName
END
GO

------------------------------------

--2|Get the Room name by entering the Room ID
CREATE FUNCTION GetRoomName(@RoomId int)
RETURNS varchar(200)
AS
BEGIN
    DECLARE @RoomName varchar(200)
    
    SELECT @RoomName = [Name]
    FROM Room
    WHERE RoomId = @RoomId
    RETURN @RoomName
END
GO

----------------------------------------------

--3|Get the user's Gender by entering the user ID
CREATE FUNCTION GetUserGender(@UserId int)
RETURNS varchar(1)
AS
BEGIN
    DECLARE @Gender varchar(1)
    
    SELECT @Gender = CASE WHEN sex = 'F' THEN 'Female' ELSE 'M' END
    FROM [Users]
    WHERE UserId = @UserId
    
    RETURN @Gender
END

--to call it:
DECLARE @UserId int
DECLARE @Gender varchar(1)

SET @UserId = 1
SET @Gender = dbo.GetUserGender(@UserId)
SELECT @Gender AS Gender

GO

-----------------------------------

--4|Get the latest message time in a specific room by entering the Room ID
CREATE FUNCTION GetLatestMessageTime(@RoomId int)
RETURNS time
AS
BEGIN
    DECLARE @LatestMessageTime time
    SELECT TOP 1 @LatestMessageTime = [TimeStamp]
    FROM Messege
    WHERE RoomId = @RoomId
    ORDER BY [TimeStamp] DESC
    RETURN @LatestMessageTime
END

GO

------------------------------------------------------

--5|Get the messaages count in a specific room  by entering the Room ID
CREATE FUNCTION GetRoomMessageCount(@RoomId int)
RETURNS int
AS
BEGIN
    DECLARE @MessageCount int
    SELECT @MessageCount = COUNT(*)
    FROM Messege
    WHERE RoomId = @RoomId
    RETURN @MessageCount
END
GO
