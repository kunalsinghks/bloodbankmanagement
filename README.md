
# #Blood Bank Management


PROJECT TITLE :  Blood Bank Management System.


PROJECT DESCRIPTION

The proposed of Blood Bank App helps the people who are in need of a blood by giving them all details of blood group availability or regarding the donors with the same blood group. Our life is so busy so we don't have time to spend going here and there, we can use technical way to search the blood by using the Blood Bank software. It provides to management timely, confidential and secure medical reports that facilitates planning and decision making for improved medical service delivery.

The project is an online system that allows to check weather required blood deposits of a particular group are available in the blood bank. System also has added features such as patient name and contacts, blood booking and even need for certain blood group is posted on the website. Features of proposed system are ease of data entry, no need to maintain any manual register and form, immediate data retrieval and so on.


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

 
![168370279-fb7fe405-21d6-4972-94f4-5f054f5faa17](https://user-images.githubusercontent.com/77065085/179967733-b4e47520-aef5-4b33-bd94-8d352a311ed6.png)


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





![168370838-bfc7ebae-983e-4037-bc8f-2beb4abf276a](https://user-images.githubusercontent.com/77065085/179968657-52cd1a7b-6a7f-4a14-8499-737626447a8f.png)





 
![168371245-96dbb742-76d5-4dbe-a42a-9896d2f5c3e4](https://user-images.githubusercontent.com/77065085/179968590-caec01e5-49cd-40af-9953-f0acae86e8e1.png)



LOGICAL  DESIGNS
![image](https://user-images.githubusercontent.com/77065085/168371765-e52b9be4-676a-4ae0-b040-557dcf16ff69.png)


 


DEVELOPING THE PHYSICAL DATABASE


![image](https://user-images.githubusercontent.com/77065085/168372612-f9410255-2816-405e-a741-7b7327011084.png)

 ![image](https://user-images.githubusercontent.com/77065085/168372902-5f8837e7-5421-43e8-945d-9f9c4fda6b75.png)

 
