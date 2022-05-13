
# Blood Bank Management


PROJECT TITLE :  Blood Bank Management System.


 

PROJECT DESCRIPTION

The purpose of this study was to develop a blood management information system to assist in the management of blood donor records and ease/or control the distribution of blood on the hospital demands. Without quick and timely access to donor records, creating market strategies for blood donation, lobbying and sensitization of blood donors becomes very difficult. The blood management information system offers functionalities to quick access to donor records collected from various parts of camps. It enables monitoring of the results and performance of the blood donation activity such that relevant and measurable objectives of the organization can be checked. It provides to management timely, confidential and secure medical reports that facilitates planning and decision making and hence improved medical service delivery. The reports generated by the system give answers to most of the challenges management faces as faras blood donor records are concerned.
The proposed of Blood Bank App helps the people who are in need of a blood by giving them all details of blood group availability or regarding the donors with the same blood group. They don’t need to go anywhere to search the blood when they need. They just need to use this software then all the result will appear in just a second. Our life is so busy so we don’t have time to spend going here and there, we can use technical way to search the blood by using the Blood Bank software we can find thousands of people who are donating the blood and also get the detail the of that person that in which city he belongs to and what is the Blood group of that person. So this is the most useful software ever .

The project consists of a central repository containing various blood deposits available along with associated details. These details include blood type, storage area and date of storage. These details help in maintaining and monitoring the blood deposits. The project is an online system that allows to check weather required blood deposits of a particular group are available in the blood bank. Moreover the system also has added features such as patient name and contacts, blood booking and even need for certain blood group is posted on the website to find available donors for a blood emergency. This online system is developed on .net platform and supported by an Sql database to store blood and user specific details.
The proposed system (Blood Bank Management System) is designed to help the Blood Bank administrator to meet the demand of Blood by sending and/or serving the request for Blood as and when required. The proposed system gives the procedural approach of how to bridge the gap between Recipient, Donor, and Blood Banks. This Application will provide a common ground for all the three parties (i.e. Recipient, Donor, and Blood Banks) and will ensure the fulfilment of demand for Blood requested by Recipient and/or Blood Bank. The features of proposed system are ease of data entry , system should provide user friendly interfaces , no need to maintain any manual register and form , immediate data retrieval and so on. The new system covers all the aspects of the existing system as well as enhanced features for the existing system For e.g. Bill provision etc.

APPROACH USED

In this project we have used a waterfall model as database lifecycle stages. The waterfall model was selected as the SDLC model due to the following reasons:
•	Requirements were very well documented, clear and fixed.
•	Technology was adequately understood.
•	Simple and easy to understand and use.
•	There were no ambiguous requirements.
•	Easy to manage due to the rigidity of the model. Each phase has specific deliverables and a review process.
•	Clearly defined stages.
•	Well understood milestones. Easy to arrange tasks.
 


CONCEPTUAL DATA MODEL
![image](https://user-images.githubusercontent.com/77065085/168370279-fb7fe405-21d6-4972-94f4-5f054f5faa17.png)

 


NORMALIZING DATA

 FUNCTIONAL DEPENDENCY
      
	D_ID ->D_NAME
	D_ID ->D_GENDER
	D_ID ->D_AGE
	D_ID ->DATE OF DONATION
	D_ID ->D_ADDRESS
	D_ID ->D_QTY

	(D_ID, BLOOD TYPE) ->D_NAME
	(D_ID, BLOOD TYPE) ->D_GENDER
	(D_ID, BLOOD TYPE) ->D_AGE
	(D_ID, BLOOD TYPE) ->DATE OF DONATION
	(D_ID, BLOOD TYPE) ->D_ADDRESS
	(D_ID, BLOOD TYPE) ->D_QTY
	(D_ID, BLOOD TYPE) ->BLOOD ID

	(ORDER_ID, BLOOD TYPE) ->ORDERS

	BLOOD TYPE, BLOOD _ID ->QUANTITY ON HAND

	(RECIPIENT_ID, BLOOD TYPE) ->R_GIVEN
	(RECIPIENT_ID, BLOOD TYPE) ->INDICATION
	(RECIPIENT_ID, BLOOD TYPE) ->RECIPIENT
	(RECIPIENT_ID, BLOOD TYPE) ->DATE OF ACCEPTION
	(RECIPIENT_ID, BLOOD TYPE) ->HOSPITAL
	(RECIPIENT_ID, BLOOD TYPE) ->R_AGE
	(RECIPIENT_ID, BLOOD TYPE) ->R_GENDER

 
![image](https://user-images.githubusercontent.com/77065085/168370838-bfc7ebae-983e-4037-bc8f-2beb4abf276a.png)

 
![image](https://user-images.githubusercontent.com/77065085/168371245-96dbb742-76d5-4dbe-a42a-9896d2f5c3e4.png)

LOGICAL  DESIGNS
![image](https://user-images.githubusercontent.com/77065085/168371765-e52b9be4-676a-4ae0-b040-557dcf16ff69.png)


 


DEVELOPING THE PHYSICAL DATABASE

mysql> create database bloodbank;
Query OK, 1 row affected (0.02 sec)

mysql> use bloodbank;
Database changed
mysql> create table blood(
    ->        Blood_Type varchar(50) primary key,
    ->        Blood_ID int(10),
    ->        blood_qty int(10));
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> create table donor(
    ->        D_id int(10) primary key,
    ->        D_name varchar(50),
    ->        D_gender varchar(10),
    ->        D_age int(10),
    ->        D_date date,
    ->        D_address varchar(10),
    ->        D_qty int(10),
    ->  Blood_Type varchar(50),foreign key(Blood_Type) references blood(Blood_Type));
Query OK, 0 rows affected, 3 warnings (0.05 sec)

mysql>
mysql> create table recipient(
    ->        R_id int(10) primary key,
    ->        R_given int(10),
    ->        indication varchar(50),
    ->        R_name varchar(50),
    ->        R_date date,
    ->        hospital varchar(10),
    ->        R_age int(10),
    ->        R_gender varchar(10),
    ->        Blood_Type varchar(50),foreign key(Blood_Type) references blood(Blood_Type));
Query OK, 0 rows affected, 3 warnings (0.05 sec)

mysql> create table orders(
    ->        Order_id int(10) primary key,
    ->        Blood_Type varchar(50),
    ->        order_qty int(10),foreign key(Blood_Type) references blood(Blood_Type));
Query OK, 0 rows affected, 2 warnings (0.09 sec)

mysql>
mysql> Insert into blood (Blood_Type,Blood_ID,blood_qty)
    -> Values('B+',1,2),
    -> ('B-',2,5),
    -> ('O-',3,2),
    -> ('AB+',4,2),
    -> ('A-',5,3),
    -> ('A+',8,1),
    -> ('O+',9,2),
    -> ('AB-',10,3);
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> Insert into donor Values
    ->       (1,"Utkarsh","m",21,'2022-12-03',"Banaras",1,'O+'),
    -> (2,"Aryan","m",21,'2022-09-05',"Rajasthan",2,'B+'),
    -> (3,"Dev","m",20,'2022-10-04',"Delhi",3,'AB-'),
    -> (4,"Debjeet","m",19,'2022-07-03',"Dehradun",4,'B+'),
    -> (5,"Aadya","f",19,'2022-11-05',"Bihar",5,'O-'),
    -> (6,"Jalaj","m",20,'2022-07-03',"Jabalpur",6,'A+'),
    -> (7,"Kunal","m",21,'2022-11-04',"Mumbai",7,'A-'),
    -> (8,"Yash","m",21,'2022-03-05',"Raipur",8,'AB+'),
    -> (9,"Pratyush","m",20,'2022-10-03',"Punjab",9,'O-'),
    -> (10,"Arushi","f",20,'2022-09-06',"Delhi",10,'B-');
Query OK, 10 rows affected (0.05 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> Insert into recipient Values
    ->       (1,2, "Accident","A",'2020-01-04',"Bharati",20,"M",'O+'),
    -> (2,1,"Heart surgery","B",'2020-02-04',"Bharati",35,"M",'B+'),
    -> (3,1,"Low haemoglobin","C",'2020-07-04',"Bharati",28,"F",'AB-'),
    -> (4,2,"Accident","D",'2020-09-04',"Bharati",26,"M",'B+'),
    -> (5,2,"dengue","E",'2020-07-05',"Bharati",18,"M",'O-'),
    -> (6,1,"Blood loses","F",'2020-05-07',"Bharati",15,"F",'A+'),
    -> (7,2,"Accident","G",'2020-01-07',"Bharati",26,"M",'A-'),
    -> (8,1,"Low haemoglobin","H",'2020-12-25',"Bharati",16,"F",'AB+'),
    -> (9,2,"Blood loses","I",'2020-02-10',"Bharati",14,"F",'O-'),
    -> (10,2, "Heart surgery","J",'2020-12-11',"Bharati",39,"M",'B-');
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> Insert into orders Values
    -> (1,'B+',3),
    -> (2,'B-',1),
    -> (3,'O-',2),
    -> (4,'AB+',2),
    -> (5,'A-',3),
    -> (6,'A+',1),
    -> (7,'O+',2),
    -> (8,'AB-',3);
Query OK, 8 rows affected (0.03 sec)
Records: 8  Duplicates: 0  Warnings: 0

![image](https://user-images.githubusercontent.com/77065085/168372612-f9410255-2816-405e-a741-7b7327011084.png)

 ![image](https://user-images.githubusercontent.com/77065085/168372902-5f8837e7-5421-43e8-945d-9f9c4fda6b75.png)

 
