The Glass Barron 

# for database. 
use w30glass_order.sql file in root folder. 
This project was completed successfully.

The structure of the business should allow for 1 cutting station for at most 8 outlets 
Outlets 
The worker at each outlet should have a password to log onto a GUI screen 
They should then have the option to modify orders or make a new order 
New Order screen 
On the GUI screen the worker should be able to enter the following information 
•	Name of customer 
•	Physical address 
•	Id number 
•	Cell number 

The program should then ask for the following details 
•	Dimensions of the ordered glass
•	Type of glass 
•	Thickness of glass
•	Special cutting requirements 
•	Hardening (yes/no)
•	Polishing (yes/no) 
•	Edge specifications
•	Quantity
This information should then be added to a basket and the categories should be cleared to allow the customer to ad a new item to the basket to allow for multiple items 
The bottom of the page should provide a “provide a quote option”
When the “Provide a quote” option is selected the program 
•	Calculate the delivery fee by using Goolgle Maps to calculate the distance between the business and the residents and add a fee to the quote per km away from the depo with a minimum of R30
•	Save all the clients particulars to a database so that if a quote is not initially accepted it can be saved till a later date or if the client later wants to add to the order this should be possible 
When the ‘’Accept quote” option is selected 
An invoice containing all the required items as well as the price must be created and saved to the completed orders database 
The order should be transferred to a computer at the cutting depo where there is a fail safe that the workers  need to acknowledge that the order has been received and is being taken care of 
The Modify orders screen 
The worker should be able to enter a previous clients Name 
This should allow them to access previously made quotes but not yet paid for ones so they can be modified or paid and put through 
It should also allow them to see past orders that were paid for by the particular client so that the same order can be copied 

At the cutting Depo 
the cutting depo should receive the confirmed for and paid for orders and an alarm should go of when a new order is received that switches off once they acknowledge that they have received it 
the workers should also be able to see a list of the received orders so that if the printer is faulty they are able to reprint the order 


Managerial side
The manager should have he’s own log on screen with a password 
The manager should be able to enter the type and the dimensions of all the glass ordered and received 
The program should then keep track of all the different glass stocks available as the area of the new orders of each type of glass is subtracted from the ordered glass 
The manager should also be able to see a running total of the total sales as well as total cost 
