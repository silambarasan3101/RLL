Drop database MyTravelDb

create database MyTravelDb


use MyTravelDb


create table UserRegistration
(
FirstName nvarchar(50) not null,
LastName nvarchar(50) not null,
ContactNumber nvarchar(10) not null unique,
EmailID nvarchar(50) not null,
DateOfBirth datetime not null,
UserId nvarchar(10) primary key,
Password nvarchar(20) not null,
ConfirmPassword nvarchar(20) not null,
)

create  table UserLogin
(UserLoginId int primary key identity(10,1),
UserId nvarchar(10) foreign key references UserRegistration,
Password nvarchar(20) not null,
UserName nvarchar(50));

--Create a trigger for UserRegistration table
CREATE TRIGGER trg_UserRegistration
ON UserRegistration
AFTER INSERT
AS
BEGIN
    -- Insert a corresponding record into UserLogin table when a new user registers
    INSERT INTO UserLogin (UserId, Password,UserName)
    SELECT i.UserId,i.Password,i.FirstName
    FROM inserted i;
END;




select * from UserRegistration
select * from UserLogin

create table AdminInfo
(AdminId int primary key identity(1,1),
UserName nvarchar(10) not null,
Password nvarchar(20) not null)

insert into AdminInfo values ('admin123', 'admin@123')
Update AdminInfo SET Password='admin@123' Where AdminId=1;
select * from AdminInfo

create table UserLogin
(UserLoginId int primary identity(10,1),
Password nvarchar(20) not null,
UserId nvarchar(10) not null,
UserName nvarchar(20) not null)














CREATE  TABLE States (
   StateName VARCHAR(255) PRIMARY KEY
);

insert into States values ('Andhra Pradesh')
insert into States values ('Goa')
insert into States values ('Karnataka')
insert into States values ('Kerala')
insert into States values ('Odisha')
insert into States values ('Rajasthan')
insert into States values ('Tamil Nadu')
insert into States values ('Uttar Pradesh')


CREATE TABLE Cities (
    CityName VARCHAR(255) Primary key,
	Cityimage nvarchar(max),
	Description varchar(255),
	Cost float,
	StateName VARCHAR(255) foreign key(StateName) references States(StateName)
);

insert into Cities values
('Kakinada','Andhra Pradesh'),
 ('Tirupati','Andhra Pradesh'),
('Vizag','Andhra Pradesh')
insert into Cities values 
('Calangute','Goa'),
 ('Madgaon','Goa'),
 ('Vasco Da Gama','Goa')
insert into Cities values
('Bangalore','Karnataka'),
 ('Ballari','Karnataka'),
 ('Mysore','Karnataka')
insert into Cities values
('Munnar','Kerala'),
 ('Varkala','Kerala'),
('Wayanad','Kerala')
insert into Cities values
('Balasore','Odisha'),
 ('Bhubaneswar','Odisha'),
 ('Puri','Odisha')
insert into Cities values
('Jaipur','Rajasthan'),
('Jaisalmer','Rajasthan'),
 ('Udaipur','Rajasthan')
insert into Cities values 
('Chennai','Tamil Nadu'),
 ('Rameshwaram','Tamil Nadu'),
 ('Coimbatore','Tamil Nadu')
insert into Cities values
('Agra','Uttar Pradesh'),
('Ayodhya','Uttar Pradesh'),
 ('Varanasi','Uttar Pradesh')



 CREATE TABLE CityPlaces (
	CityPlace VARCHAR(255) primary key,
	img nvarchar(max),
	CityName VARCHAR(255) foreign key(CityName) references Cities(CityName)
);

insert into CityPlaces values ('Araku valley','Vizag')
insert into CityPlaces values('Borra Caves','Vizag')
insert into CityPlaces values('Katiki water falls','Vizag')
insert into CityPlaces values ('Sri venkateswara swami temple','Tirupati')
insert into CityPlaces values('Talakona Waterfalls','Tirupati')
insert into CityPlaces values('Sri Venkateswara National Park','Tirupati')
insert into CityPlaces values (' Annavaram','Kakinada')
insert into CityPlaces values('Uppada beach','Kakinada')
insert into CityPlaces values('Coringa Wildlife Sanctuary','Kakinada')


insert into CityPlaces values ('Jaganath Temple','Puri')
insert into CityPlaces values('Puri Sea Beach','Puri')
insert into CityPlaces values('Konark','Puri')
insert into CityPlaces values ('Nandankanan Zoo logical park','Bhubaneswar')
insert into CityPlaces values('Udaygiri and Khandagiri Caves','Bhubaneswar')
insert into CityPlaces values('Lingaraj Temple','Bhubaneswar')
insert into CityPlaces values (' Chardipur sea Beach','Balasore')
insert into CityPlaces values('Panchalinngeswar Temple','Balasore')
insert into CityPlaces values('Kuldhia Forest','Balasore')


insert into CityPlaces values('Marina Beach','Chennai')
insert into CityPlaces values('Kapaleeshwarar Temple','Chennai')
insert into CityPlaces values('Nexus Vijaya Mall','Chennai')
insert into CityPlaces values('Sangumal Beach','Rameshwaram')
insert into CityPlaces values('Dhanushkodi','Rameshwaram')
insert into CityPlaces values('Arichal Munai','Rameshwaram')
insert into CityPlaces values('Adiyogi','Coimbatore')
insert into CityPlaces values('Brookefields Mall','Coimbatore')
insert into CityPlaces values('Velliangiri Hills','Coimbatore')


insert into CityPlaces values ('Rolling Hills','Munnar')
insert into CityPlaces values('Virgin Forest','Munnar')
insert into CityPlaces values('Tea Museum','Munnar')
insert into CityPlaces values ('Bird Watching Sites','Wayanad')
insert into CityPlaces values('Breathlaking Waterfalls','Wayanad')
insert into CityPlaces values('Edakkal Caves','Wayanad')
insert into CityPlaces values (' Janardana Swami Temple','Varkala')
insert into CityPlaces values('Papanasam Beach','Varkala')
insert into CityPlaces values('Varkala Beach','Varkala')


insert into CityPlaces values('Calangute Beach','Calangute')
insert into CityPlaces values('St.Alex Church','Calangute')
insert into CityPlaces values('Dona Paula','Calangute')
insert into CityPlaces values('Colva Beach','Madgaon')
insert into CityPlaces values('Loutolim','Madgaon')
insert into CityPlaces values('Old Goa','Madgaon')
insert into CityPlaces values('Bogmale Beach','Vasco Da Gama')
insert into CityPlaces values('Japanese Garden','Vasco Da Gama')
insert into CityPlaces values('Fontaibas','Vasco Da Gama')


insert into CityPlaces values ('Lalbagh Botanical Garden','Bangalore')
insert into CityPlaces values('Iscon temple','Bangalore')
insert into CityPlaces values('Cubbon','Bangalore')
insert into CityPlaces values ('Ballari Fort','Ballari')
insert into CityPlaces values('Sri Kumara Swamy Temple','Ballari')
insert into CityPlaces values('Hampi','Ballari')
insert into CityPlaces values ('Mysore Palace','Mysore')
insert into CityPlaces values('Brindavana Gardens','Mysore')
insert into CityPlaces values('Nandi','Mysore')


insert into CityPlaces values('TajMahal','Agra') 
insert into CityPlaces values('AgraFort','Agra') 
insert into CityPlaces values('Itmad-ud-Daula','Agra') 
insert into CityPlaces values('Shri Kashi' ,'Varanasi') 
insert into CityPlaces values('Assi Ghat','Varanasi') 
insert into CityPlaces values('Dashashwamedh Ghat','Varanasi' ) 
insert into CityPlaces values('Sri Hanuman Garhi Mandir','Ayodhya') 
insert into CityPlaces values('Kanak Bhawan','Ayodhya' ) 
insert into CityPlaces values('Sri Nageshwaranath Temple ','Ayodhya')



insert into CityPlaces values ('Hawa Mahal','Jaipur')
insert into CityPlaces values('Amber Palace','Jaipur')
insert into CityPlaces values('Sheesh Mahal','Jaipur')
insert into CityPlaces values ('Jaisalmer Fort','Jaisalmer')
insert into CityPlaces values('Thar Desert','Jaisalmer')
insert into CityPlaces values('Gadisar Lake','Jaisalmer')
insert into CityPlaces values ('City Palace','Udaipur')
insert into CityPlaces values('Lake Pichola','Udaipur')
insert into CityPlaces values('Eklingsi Temple','Udaipur')


CREATE TABLE Restaurant (
	RestaurantPlace VARCHAR(255) primary key,
	CityPlace VARCHAR(255) foreign key(CityPlace) references CityPlaces(CityPlace),
	img nvarchar(max)
	);


	insert into Restaurant values ('Barbecue Restaurant','Araku valley')
	insert into Restaurant values('Bamboo Bay Restaurant','Borra Caves')
	insert into Restaurant values('Stark Cafe Restaurant','Katiki water falls')
	insert into Restaurant values ('Sri Venkatesa BHavan Restaurant','Sri venkateswara swami temple')
	insert into Restaurant values('Eazy Restaurant','Talakona Waterfalls')
	insert into Restaurant values('Capsicum Restaurant','Sri Venkateswara National Park')
	insert into Restaurant values ('Bommarillu Restaurant',' Annavaram')
	insert into Restaurant values('Uppada Sasa Multi Cuisine Restaurant','Uppada beach')
	insert into Restaurant values('Nallam Restaurant','Coringa Wildlife Sanctuary')


	insert into Restaurant values ('Agarwals Restaurant','Jaganath Temple')
	insert into Restaurant values('Wildgrass Restaurant','Puri Sea Beach')
	insert into Restaurant values('Tasty Restaurant','Konark')
	insert into Restaurant values ('OTDC Restaurant','Nandankanan Zoo logical park')
	insert into Restaurant values('Keeva Restaurant','Udaygiri and Khandagiri Caves')
	insert into Restaurant values('Maa Kali Restaurant','Lingaraj Temple')
	insert into Restaurant values ('Seafood Restaurant',' Chardipur sea Beach')
	insert into Restaurant values('Big Star Multi Cuisine Restaurant','Panchalinngeswar Temple')
	insert into Restaurant values('Binayak Restaurant','Kuldhia Forest')


	insert into Restaurant values('Annalakshmi Restaurant','Marina Beach')
	insert into Restaurant values('Peshawri Restaurant','Kapaleeshwarar Temple')
	insert into Restaurant values('Pakwan Restaurant','Nexus Vijaya Mall')
	insert into Restaurant values('Seashore Garden Restaurant','Sangumal Beach')
	insert into Restaurant values('Manonmanei Restaurant','Dhanushkodi')
	insert into Restaurant values('Mannan Restaurant','Arichal Munai')
	insert into Restaurant values('The French Door Restaurant','Adiyogi')
	insert into Restaurant values('Bird on Tree Restaurant','Brookefields Mall')
	insert into Restaurant values('Red Pearl Restaurant','Velliangiri Hills')


	insert into Restaurant values ('HAIKU Restaurant','Rolling Hills')
	insert into Restaurant values('Kalawana Restaurant','Virgin Forest')
	insert into Restaurant values('Hot Tea Restaurant','Tea Museum')
	insert into Restaurant values ('Pegion Restaurant','Bird Watching Sites')
	insert into Restaurant values('Leo Restaurant','Breathlaking Waterfalls')
	insert into Restaurant values('Manure Restaurant','Edakkal Caves')
	insert into Restaurant values ('Roboat Restaurant',' Janardana Swami Temple')
	insert into Restaurant values('Happy Restaurant','Papanasam Beach')
	insert into Restaurant values('Seasore Restaurant','Varkala Beach')


	insert into Restaurant values('Beach Queen Restaurant','Calangute Beach')
	insert into Restaurant values('Ratna Sagar Restaurant','St.Alex Church')
	insert into Restaurant values('Pousada Restaurant','Dona Paula')
	insert into Restaurant values('Spicy Restaurant','Colva Beach')
	insert into Restaurant values('Longuinhos Restaurant','Loutolim')
	insert into Restaurant values('Peppers Restaurant','Old Goa')
	insert into Restaurant values('Vasco Restaurant','Bogmale Beach')
	insert into Restaurant values('Adarsh Restaurant','Japanese Garden')
	insert into Restaurant values('Vascoda Gama Restaurant','Fontaibas')


	insert into Restaurant values ('MTR Restaurant','Lalbagh Botanical Garden')
	insert into Restaurant values('Clove King Restaurant','Iscon temple')
	insert into Restaurant values('Tiamo Restaurant','Cubbon')
	insert into Restaurant values ('Bell Restaurant','Ballari Fort')
	insert into Restaurant values('Utsav Restaurant','Sri Kumara Swamy Temple')
	insert into Restaurant values('Trishul Restaurant','Hampi')
	insert into Restaurant values ('Gufha  Restaurant','Mysore Palace')
	insert into Restaurant values('Royal Orchid Brindavan Garden Restaurant','Brindavana Gardens')
	insert into Restaurant values('Old Stone Restaurant','Nandi')


   insert into Restaurant values ('The Nawaabs Restaurant','TajMahal')
   insert into Restaurant values('Hotel Wingston Restaurant','AgraFort')
   insert into Restaurant values('Bellevue Restaurant','Itmad-ud-Daula')
   insert into Restaurant values ('Shree Kashi Restaurant','Shri Kashi')
   insert into Restaurant values('The Beatles Bistro Restaurant','Assi Ghat')
   insert into Restaurant values('Vishnu Tea Emporium Restaurant','Dashashwamedh Ghat')
   insert into Restaurant values ('Baba Bhojnalaya Restaurant','Sri Hanuman Garhi Mandir')
   insert into Restaurant values('Shri Sita Rasoi Bhojnalaya Atithi Nivas Restaurant','Kanak Bhawan')
   insert into Restaurant values('The Grand Radhey Restaurant','Sri Nageshwaranath Temple')


   insert into Restaurant values('Tatto Cafe Restaurant','Hawa Mahal')
   insert into Restaurant values('Kebabs Restaurant','Amber Palace')
   insert into Restaurant values('Hawa Mahal Restaurant','Sheesh Mahal')
   insert into Restaurant values('Hindustani Restaurant','Jaisalmer Fort')
   insert into Restaurant values('Desert Jaisalmer Restaurant','Thar Desert')
   insert into Restaurant values('Musa Desert Nest Restaurant','Gadisar Lake')
   insert into Restaurant values('Upre Restaurant','City Palace')
   insert into Restaurant values('Jharokha Restaurant','Lake Pichola')
   insert into Restaurant values('Bhairo Restaurant','Eklingsi Temple')

CREATE TABLE  FoodNames(
	FoodName VARCHAR(255) primary key,
	FoodCosts VARCHAR(255)NOT NULL,
	RestaurantPlace VARCHAR(255) foreign key(RestaurantPlace) references Restaurant(RestaurantPlace),
	img nvarchar(max)
	);

	insert into FoodNames values ('Pastry','100','Barbecue Restaurant')
	insert into FoodNames values('Muri mixture','50','Bamboo Bay Restaurant')
	insert into FoodNames values('Coffee','40','Stark Cafe Restaurant')
	insert into FoodNames values ('Thayir Vadai','150','Sri Venkatesa BHavan Restaurant')
	insert into FoodNames values('Roli','80','Eazy Restaurant')
	insert into FoodNames values('Srivari Laddu','50','Capsicum Restaurant')
	insert into FoodNames values ('Kakinada Kaja','500','Bommarillu Restaurant')
	insert into FoodNames values('Pootharekulu','800','Uppada Sasa Multi Cuisine Restaurant')
	insert into FoodNames values('Pulihora','100','Nallam Restaurant')


	insert into FoodNames values ('Roti','20','Agarwals Restaurant')
	insert into FoodNames values('Sea Food','500','Wildgrass Restaurant')
	insert into FoodNames values('Biriyani','499','Tasty Restaurant')
	insert into FoodNames values ('Dosa','80','OTDC Restaurant')
	insert into FoodNames values('Paneer','225','Keeva Restaurant')
	insert into FoodNames values('Gulabjammun','299','Maa Kali Restaurant')
	insert into FoodNames values ('Fish','600','Seafood Restaurant')
	insert into FoodNames values('Thali','400','Big Star Multi Cuisine Restaurant')
	insert into FoodNames values('Manchuriya','200','Binayak Restaurant')


	insert into FoodNames values('Veg Thali Chapati','299','Annalakshmi Restaurant')
	insert into FoodNames values('Manchow Soup','259','Peshawri Restaurant')
	insert into FoodNames values('Paneer Manchurian','289','Pakwan Restaurant')
	insert into FoodNames values('Yera Thokku','250','Seashore Garden Restaurant')
	insert into FoodNames values('Fish Fry','350','Manonmanei Restaurant')
	insert into FoodNames values('Chicken Tikka','399','Mannan Restaurant')
	insert into FoodNames values('Kaalan','229','The French Door Restaurant')
	insert into FoodNames values('Kongunadu Biryani','599','Bird on Tree Restaurant')
	insert into FoodNames values('Arisi Paruppu Sadam','459','Red Pearl Restaurant')
	

	insert into FoodNames values ('Thai Noodles','300','HAIKU Restaurant')
	insert into FoodNames values('Grill Chicken','250','Kalawana Restaurant')
	insert into FoodNames values('Tea','30','Hot Tea Restaurant')
	insert into FoodNames values ('Koriean Sandwitch','259','Pegion Restaurant')
	insert into FoodNames values('Kaju','450','Leo Restaurant')
	insert into FoodNames values('Burger','299','Manure Restaurant')
	insert into FoodNames values ('Sambar Rice','299','Roboat Restaurant')
	insert into FoodNames values('Pizza','259','Happy Restaurant')
	insert into FoodNames values('Crab','600','Seasore Restaurant')


	insert into FoodNames values('Fish Curry Rice','600','Beach Queen Restaurant')
	insert into FoodNames values('Bebinca','500','Ratna Sagar Restaurant')
	insert into FoodNames values('Xaculi','400','Pousada Restaurant')
	insert into FoodNames values('Sannas','450','Spicy Restaurant')
	insert into FoodNames values('Batica','350','Longuinhos Restaurant')
	insert into FoodNames values('Fish frys','600','Peppers Restaurant')
	insert into FoodNames values('Seafood','500','Vasco Restaurant')
	insert into FoodNames values('Feni','300','Adarsh Restaurant')
	insert into FoodNames values('Bebica','250','Vascoda Gama Restaurant')


	insert into FoodNames values ('Puri','80','MTR Restaurant')
	insert into FoodNames values('Biriyanis','500','Clove King Restaurant')
	insert into FoodNames values('Vada','100','Tiamo Restaurant')
	insert into FoodNames values ('Sandwitch','250','Bell Restaurant')
	insert into FoodNames values('Milkshake','299','Utsav Restaurant')
	insert into FoodNames values('Noodle','250','Trishul Restaurant')
	insert into FoodNames values ('Chapathi','80','Gufha  Restaurant')
	insert into FoodNames values('Parota','90','Royal Orchid Brindavan Garden Restaurant')
	insert into FoodNames values('Ice cream','150','Old Stone Restaurant')


	insert into FoodNames values ('Mughlai dish','325','The Nawaabs Restaurant')
	insert into FoodNames values ('Spring Cooler','250','Hotel Wingston Restaurant')
	insert into FoodNames values ('Butter Chicken','300','Bellevue Restaurant')
    insert into FoodNames values ('Chole Bhautue','200','Shree Kashi Restaurant')
	insert into FoodNames values ('pizzas','299','The Beatles Bistro Restaurant')
	insert into FoodNames values ('Latte','250','Vishnu Tea Emporium Restaurant')
    insert into FoodNames values ('Pav Bhaji','125','Baba Bhojnalaya Restaurant')
	insert into FoodNames values ('Chole Chawal','150','Shri Sita Rasoi Bhojnalaya Atithi Nivas Restaurant')
	insert into FoodNames values ('Rajma Chawal','150','The Grand Radhey Restaurant')


	insert into FoodNames values ('Ghevar','125','Tatto Cafe Restaurant')
	insert into FoodNames values ('LaalMaas','225','Kebabs Restaurant')
	insert into FoodNames values ('Ker Sangri','150','Hawa Mahal Restaurant')
	insert into FoodNames values ('Kachori','200','Hindustani Restaurant')
	insert into FoodNames values ('Churma','250','Desert Jaisalmer Restaurant')
	insert into FoodNames values ('Malpua','150','Musa Desert Nest Restaurant')
	insert into FoodNames values ('Gulia','200','Upre Restaurant')
	insert into FoodNames values ('Kadhi','300','Jharokha Restaurant')
	insert into FoodNames values ('Kalakand','450','Bhairo Restaurant')



select * from states
select * from Cities
select * from CityPlaces
select * from Restaurant
select * from FoodNames




create table Feedback(
Feedback int primary key identity(1,1),
UserId nvarchar(10) foreign key references UserRegistration,
rating int,
comments varchar(max),
img nvarchar(max));




Select * From Feedback




drop table Feedback



drop table states
drop table Cities
drop table CityPlaces
drop table Restaurant
drop table FoodNames