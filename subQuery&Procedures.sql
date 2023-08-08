--A) Subqueries
GO
USE WebChatApplication ;
GO

--1| Supposing chatrooms are given IDs increasingly, find the ID of the second newest chatroom
SELECT MAX(RoomId) AS second_newest
FROM Room
WHERE RoomId < (SELECT MAX(RoomId) FROM Room)

--2| Find the name of the group chat
SELECT Room.[Name]
FROM Room
WHERE RoomId = (
	SELECT MAX(RoomId) AS second_highest
	FROM Room
	WHERE RoomId < (SELECT MAX(RoomId) FROM Room)
);

--3| Retrieve the names of users who have sent messages in the chatroom with ID number 3
SELECT FirstName, LastName
FROM Users
WHERE UserId IN (
    SELECT DISTINCT SenderId
    FROM Messege
    WHERE RoomId = 3
);


--4| Retrieve the total number of messages in (UX/UI) chat room
SELECT COUNT(*) AS TotalMessages
FROM Messege
WHERE RoomId = (
    SELECT RoomId
    FROM Room
    WHERE [Name] = 'UX/UI'
);

--5| Retrieve the messages sent by the user Basma
SELECT MessegeId, [Text], [TimeStamp]
FROM Messege
WHERE SenderId = (
    SELECT UserId
    FROM Users
    WHERE FirstName = 'Basma'
);

--6| Find the chatrooms which contain users whose first names contain the letter 'o'
SELECT Room.[Name]
FROM Room, LoggedInUser
WHERE LoggedInUser.RoomId = Room.RoomId
AND LoggedInUser.UserId in (
	SELECT Users.UserId
	FROM Users
	WHERE FirstName like '%o%'
);
GO

--B) Procedures 
--1| Take a user ID as an input parameter and show the user details matching the provided ID.
CREATE PROCEDURE GetUserByID
    @inputID INT
AS
    SELECT * FROM [Users] WHERE UserId = @inputID;
GO
--to execute
GetUserByID @inputID = 2 ;
GO

--2| Show the total messages count in a room by taking its ID as an input
CREATE PROCEDURE GetTotalMessagesCount
    @inputRoomId INT,
    @TotalCount INT OUTPUT
AS
    SELECT @TotalCount = COUNT(*) FROM Messege WHERE RoomId = @inputRoomId;
GO
--to execute it, we first create a variable to hold the output value
DECLARE @Count INT;
EXEC GetTotalMessagesCount @inputRoomId = 1, @TotalCount = @Count OUTPUT;
SELECT @Count;
GO

--3| Find all the chatrooms that a sepcific user is in, using his first name
CREATE PROCEDURE GetAllChatrooms
	@inputUserName VARCHAR(20)
AS
BEGIN
	SELECT Room.[Name]
	FROM Room, LoggedInUser
	WHERE LoggedInUser.RoomId = Room.RoomId
	AND LoggedInUser.UserId in (
		SELECT Users.UserId
		FROM Users
		WHERE FirstName = @inputUserName
	);
END
GO
--to execute
EXEC GetAllChatrooms @inputUserName = 'Dima'
GO

--4| A procedure that takes a room name and updates it
CREATE PROCEDURE UpdateRoomName
    @OldRoomName VARCHAR(50),
    @NewRoomName VARCHAR(50)
AS
BEGIN
    UPDATE Room
    SET [Name] = @NewRoomName
    WHERE [Name] = @OldRoomName;
END;
GO
--to execute
EXEC UpdateRoomName @OldRoomName = 'Gamers reviews', @NewRoomName = 'Gamers';
GO

--5| Add a new room in room table using a procedure 
CREATE PROCEDURE AddRoom
    @RoomId INT,
    @RoomName VARCHAR(50)
AS
BEGIN
    INSERT INTO Room (RoomId, [Name])
    VALUES (@RoomId, @RoomName);
END;
GO
EXEC AddRoom @RoomId = 16, @RoomName = 'Seasonal films';
GO

--6| Count the number of all users of the application
CREATE PROCEDURE GetTotalUsersCount
    @TotalUsers INT OUTPUT
AS
    SELECT @TotalUsers = COUNT(*) FROM [Users];
GO

--to execute
DECLARE @UsersCount INT;
EXEC GetTotalUsersCount @TotalUsers = @UsersCount OUTPUT;
SELECT @UsersCount AS TotalUsersCount;
GO

--Create table to store each operation (insert,update..) and the new and old value in the table (hint: use trigger)
create TABLE UsersOperationsLog(
	LogId INT IDENTITY(1,1) PRIMARY KEY,
	operationType varchar(10), 
	UserId INT,
	FirstName varchar(200) not null,
	LastName varchar(200) not null,
	[Password] varchar(200) not null,
	sex varchar(1)check(sex in('f','m')),
	modifiedDate date DEFAULT GETDATE()
);

GO
ALTER TRIGGER UsersTrigger
ON Users
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @OperationType VARCHAR(10);
    
    IF EXISTS(SELECT * FROM inserted)
    BEGIN
        IF EXISTS(SELECT * FROM deleted)
		BEGIN
            SET @OperationType = 'Update';
			INSERT INTO UsersOperationsLog (operationType, UserId, FirstName, LastName, [Password], sex)
			SELECT @OperationType, UserId, FirstName, LastName, [Password], sex
			FROM deleted;
		END
        ELSE
            SET @OperationType = 'Insert';

        INSERT INTO UsersOperationsLog (operationType, UserId, FirstName, LastName, [Password], sex)
        SELECT @OperationType, UserId, FirstName, LastName, [Password], sex
        FROM inserted;
    END
    ELSE
    BEGIN
        SET @OperationType = 'Delete';

        INSERT INTO UsersOperationsLog (operationType, UserId, FirstName, LastName, [Password], sex)
        SELECT @OperationType, UserId, FirstName, LastName, [Password], sex
        FROM deleted;
    END;
END;

GO

DELETE FROM Users WHERE UserId = 27

INSERT INTO Users
VALUES(27, 'Luci', 'A', 'luca@@708', 'f')

UPDATE Users
SET [Password] = 'dima#129#'
WHERE UserId = 3

select * from UsersOperationsLog
