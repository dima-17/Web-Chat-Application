--Queries
use WebChatApplication
go
--1| Show how many users are in (Anime lovers99) chat room
SELECT COUNT(UserId) AS 'Anime lovers99 members'
FROM LoggedInUser, Room
WHERE LoggedInUser.RoomId = Room.RoomId
AND [Name] = 'Anime lovers99'

--2| List all the users' names and IDs who their first name doesn't contain the letter'a'
SELECT UserId, FirstName, LastName
FROM Users
WHERE FirstName NOT LIKE '%a%'

--3| Who are the users in (FIFA News) chat room?
SELECT FirstName, LastName
FROM Users, Room, LoggedInUser
WHERE LoggedInUser.RoomId = Room.RoomId
AND [Name] = 'FIFA News'
AND LoggedInUser.UserId = Users.UserId

--4| How many female and male users are using the application?
SELECT sex, COUNT(UserId)
FROM Users
GROUP BY sex
ORDER BY COUNT(UserId) DESC

--5| Show all the chat rooms whose topic is drama, regardless of its genre
SELECT [Name]
FROM Room
WHERE [Name] LIKE '%drama%'

--6| Show the ID, first name and password of users who has ID greater than 15
SELECT UserId, FirstName, [Password]
FROM Users
WHERE UserId > 15

--7| List users from the most talkative to least talkative
SELECT SenderId, FirstName, COUNT(MessegeId) AS 'Number of sent messages'
FROM Users, Messege
WHERE Users.UserId = Messege.SenderId
GROUP BY SenderId, FirstName
ORDER BY COUNT(MessegeId) DESC

--8| Show all the messages sent in (UX/UI) chat room
SELECT [Text]
FROM Messege, Room
WHERE Messege.RoomId = Room.RoomId
AND [Name] = 'UX/UI'