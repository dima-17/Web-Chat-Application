USE [WebChatApplication]
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (1, N'Raggad', N'AboShammala', N'1234', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (2, N'Basma', N'Qadoura', N'12345', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (3, N'Dima', N'Salah', N'123456', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (4, N'Bissan', N'Almasri', N'12345656', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (5, N'Ranim', N'Elqrnawi', N'12345678', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (6, N'Eslam', N'Nabil', N'1234fu', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (7, N'Ahmad', N'Ahmad', N'123456gh', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (8, N'yazid', N'Azmi', N'1345hhgf', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (9, N'Abd Elrahman', N'Harara', N'68865443', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (10, N'Mohammed', N'Abu Elsabeh', N'956843jf', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (11, N'Khalid', N'Timraz', N'747765', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (12, N'Fatma', N'Mahir', N'absdef', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (13, N'Sohail', N'Afana', N'shgfsss', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (14, N'karim', N'fahmi', N'15374ghd', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (15, N'om', N'kulthom', N'hddjsa2', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (16, N'Roshdy', N'Abaza', N'khfhwh64', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (17, N'Dalia', N'Elbuhariy', N'7436843', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (18, N'yasmin', N'Fasial', N'8548332', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (19, N'Faisal', N'Hashima', N'7349uhfe', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (20, N'neymar', N'Ronaldo', N'747hgef', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (21, N'yaseen', N'Bono', N'loveB', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (22, N'samira', N'mansour', N'kjfd67', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (23, N'Ghada', N'Abu Harbid', N'87603jnm', N'f')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (24, N'yosof', N'Eldaor', N'kd58jn', N'm')
GO
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Password], [sex]) VALUES (25, N'asma', N'maher', N'63875gh', N'f')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (1, N'AI tech')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (2, N'Friends foraver')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (3, N'love live')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (4, N'Sowftware Engineering')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (5, N'Family group')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (6, N'UX/UI')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (7, N'Dentist')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (8, N'Anime lovers99')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (9, N'Gamers reviews')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (10, N'FIFA News')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (11, N'Gaza now')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (12, N'Kdrama')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (13, N'Jdrama')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (14, N'Cdrama')
GO
INSERT [dbo].[Room] ([RoomId], [Name]) VALUES (15, N'Al Jazeera news')
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (1, 2)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (2, 3)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (3, 4)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (4, 5)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (5, 6)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (6, 7)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (7, 8)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (8, 9)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (9, 10)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (10, 11)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (11, 12)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (12, 5)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (12, 13)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (13, 14)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (14, 15)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (15, 1)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (16, 1)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (17, 6)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (18, 7)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (19, 9)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (20, 8)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (21, 10)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (22, 11)
GO
INSERT [dbo].[LoggedInUser] ([UserId], [RoomId]) VALUES (23, 4)
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (1, 2, 5, 7, N'hiii', CAST(N'01:00:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (2, 3, 4, 6, N'go', CAST(N'01:02:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (3, 1, 2, 13, N'hello', CAST(N'01:12:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (4, 11, 4, 5, N'football', CAST(N'02:55:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (5, 12, 9, 24, N'hi bro', CAST(N'03:45:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (6, 13, 10, 23, N'goodby', CAST(N'03:44:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (7, 7, 8, 9, N'yes', CAST(N'03:01:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (8, 15, 20, 21, N'please', CAST(N'04:25:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (9, 9, 11, 23, N'i love him', CAST(N'07:05:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (10, 8, 3, 5, N'noooo', CAST(N'09:55:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (11, 6, 5, 8, N'yeeeh', CAST(N'11:05:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (12, 11, 12, 11, N'rama say', CAST(N'04:36:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (13, 10, 10, 13, N'i said disco', CAST(N'04:05:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (14, 14, 14, 13, N'you said party', CAST(N'05:08:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (15, 12, 16, 19, N'disco disco', CAST(N'02:02:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (16, 12, 16, 18, N'party party', CAST(N'03:02:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (17, 11, 23, 14, N'momyyyy', CAST(N'05:06:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (18, 2, 2, 6, N'ranyy mokhrjii', CAST(N'06:09:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (19, 1, 1, 23, N'tititi', CAST(N'07:06:00' AS Time))
GO
INSERT [dbo].[Messege] ([MessegeId], [RoomId], [SenderId], [ToUserId], [Text], [TimeStamp]) VALUES (20, 3, 5, 9, N'zai ma rohty', CAST(N'06:46:00' AS Time))
GO
