create table blood(
       Blood_Type varchar(50) primary key,
       Blood_ID int(10),
       blood_qty int(10));
       
create table donor(
       D_id int(10) primary key,
       D_name varchar(50),
       D_gender varchar(10),
       D_age int(10),
       D_date date,
       D_address varchar(10),
       D_qty int(10),
	 Blood_Type varchar(50),foreign key(Blood_Type) references blood(Blood_Type));

create table recipient(
       R_id int(10) primary key,
       R_given int(10),
       indication varchar(50),
       R_name varchar(50),
       R_date date,
       hospital varchar(10),
       R_age int(10),
       R_gender varchar(10),
       Blood_Type varchar(50),foreign key(Blood_Type) references blood(Blood_Type));

create table orders(
       Order_id int(10) primary key,
       Blood_Type varchar(50),
       order_qty int(10),foreign key(Blood_Type) references blood(Blood_Type));

Insert into donor Values
      (1,"Utkarsh","m",21,'2022-12-03',"Banaras",1,'O+'),
	(2,"Aryan","m",21,'2022-09-05',"Rajasthan",2,'B+'),
	(3,"Dev","m",20,'2022-10-04',"Delhi",3,'AB-'),
	(4,"Debjeet","m",19,'2022-07-03',"Dehradun",4,'B+'),
	(5,"Aadya","f",19,'2022-11-05',"Bihar",5,'O-'),
	(6,"Jalaj","m",20,'2022-07-03',"Jabalpur",6,'A+'),
	(7,"Kunal","m",21,'2022-11-04',"Mumbai",7,'A-'),
	(8,"Yash","m",21,'2022-03-05',"Raipur",8,'AB+'),
	(9,"Pratyush","m",20,'2022-10-03',"Punjab",9,'O-'),
	(10,"Arushi","f",20,'2022-09-06',"Delhi",10,'B-');

Insert into recipient Values
      (1,2, "Accident","A",'2020-01-04',"Bharati",20,"M",'O+'),
	(2,1,	"Heart surgery","B",'2020-02-04',"Bharati",35,"M",'B+'),
	(3,1,	"Low haemoglobin","C",'2020-07-04',"Bharati",28,"F",'AB-'),
	(4,2,	"Accident","D",'2020-09-04',"Bharati",26,"M",'B+'),
	(5,2,	"dengue","E",'2020-07-05',"Bharati",18,"M",'O-'),
	(6,1,	"Blood loses","F",'2020-05-07',"Bharati",15,"F",'A+'),
	(7,2,	"Accident","G",'2020-01-07',"Bharati",26,"M",'A-'),
	(8,1,	"Low haemoglobin","H",'2020-12-25',"Bharati",16,"F",'AB+'),
	(9,2,	"Blood loses","I",'2020-02-10',"Bharati",14,"F",'O-'),
	(10,2, "Heart surgery","J",'2020-12-11',"Bharati",39,"M",'B-');

Insert into blood (Blood_Type,Blood_ID,blood_qty)
Values('B+',1,2),
	('B-',2,5),
	('O-',3,2),
	('AB+',4,2),
	('A-',5,3),
	('A+',8,1),
	('O+',9,2),
	('AB-',10,3);

Insert into orders Values
	(1,'B+',3),
	(2,'B-',1),
	(3,'O-',2),
	(4,'AB+',2),
	(5,'A-',3),
	(6,'A+',1),
	(7,'O+',2),
	(8,'AB-',3);



