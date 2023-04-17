create database WebChatApplication;
go
use WebChatApplication ;
go

create table [Users](
UserId int primary key,
FirstName varchar(200) not null,
LastName varchar(200) not null,
[Password] varchar(200) not null,
sex varchar(1)check(sex in('f','m'))
);

create table Room(
RoomId int primary key,
[Name] varchar(200)not null

);

create table LoggedInUser(
UserId int not null,
RoomId int not null,
constraint User_Room primary key(UserId,RoomId),
foreign key (UserId)references [Users](UserId) on delete cascade on update cascade,
foreign key (RoomId)references Room(RoomId)on delete cascade on update cascade
);

create table Messege(
MessegeId int Primary key,
RoomId int not null,
SenderId int not null,
ToUserId int not null ,
[Text] text,
[TimeStamp] time ,
foreign key(ToUserId)references [Users](userId)on delete cascade on update cascade,
foreign key (SenderId)references [Users](UserId),
foreign key (RoomId)references Room(RoomId)on delete cascade on update cascade

);



