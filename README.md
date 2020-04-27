# SupplierMate

###### Ruby Terminal App
###### by Katrina Marquez 

## Problem
"Is there an app I can download?" is a common question asked when people are online shopping. If you are a home owner undertaking a home renovation project or you are a builder purchasing supplies for your site, you need an all-in-one solution that allows you to quickly see the price of goods and order products. Driving around to different stores and calling different suppliers is time heavy. 

SupplierMate was created to make it easier to:
- view items for sale;
- view the prices; and 
- order from the supplier.
We wanted to enable users to complete it in one solution. 

We provide a solution for both sides of the transaction:
- **suppliers** *are able to display products to prospective or recurring customers*; and
- **customers** *avoid the need to pick up the phone and call the supplier*. 

## Links with Project Details
*Technical*

GitHub: <https://github.com/katrinamarquez/KatrinaMarquez_T1A2>

*Project Management*

Trello board: <https://trello.com/invite/b/FLzZSzQc/c36f7961a4f65b8a7c1b5e728e3684c6/suppliermate-terminal-app> 

## Intended Users of SupplierMate
*1. Suppliers* 
User with products for sale. Examples of potential suppliers includes building product suppliers and manufacturers.

Suppliers need to be able to:
- display products for sale;
- add items for sale; and 
- amend the supplier's contact detail visible to the customer. 

*2. Customer* 
Any user who wants to purchase the products for sale. Examples of potential customers include builders, building contractors or any person doing home renovation projects. 

Customers need to be able to:
- view products for sale;
- cost per unit of the item;
- order an item; 
- add an item to the order; and 
- see total value of order.

## Features 
1. View products for sale. 
Suppliers and consumers will be able to view the products that are avaliable for viewing on the app. This will display the name of the product and price of the product. 

2. As a Supplier, you are able to add new item for sale.
The Supplier is able to add new items for purchase on the app. Information collected about the product will include title and price. 

3. As a supplier, you are able to update contact details.
The supplier is able to input their new details via the app. Details include the suppliers business name, business address and contact number.

4. As a customer, you are able to purchase items after viewing list of products. 
Customers can enter the items they want to purchase from the supplier using this version of SupplierMate. They will be prompted to identify the product they want to purchase and how much.  

5. As a customer, you are able to enter your contact details for the order. 
The customer is able to enter their name, contact details and shipping address for their order on the app. 

6. Different menu options for supplier and customer. 
There are different menu options and workflows for suppliers and consumers. This was required as the information and actions undertaken by the two types of users differ. 

## Known issues
1. There are known issues with the validation of incorrect input when it does not equal an integer.

For suppliers specifically:
- If they go to add a new product and the price is not a number, it will allow the supplier to add product. 
- If they update their contact details and the telephone number is not a 'valid' phone number in Australia, they will allowed to save details. As supplier contact details were not going anywhere for the mvp, it allows the user to save the data and need manual intervention for the meantime.

## Supplier User Experience 
Control flow for user type - supplier. 

![Supplier Flow Chart] (https://github.com/katrinamarquez/KatrinaMarquez_T1A2/blob/master/Documents/Supplier%20Flow%20Chart.png)

Error messages that will show to supplier:
- If the supplier selects an option type that is not avaliable from the supplier menu, the user will be then asked to select if they are a supplier or consumer again. This can be re-written after refactoring of the code.  

## Customer User Experience 

Control flow for user type - customer. Below is the final version of the control flow. This control flow changed since the initial scoping of the idea. 

![Customer Flow Chart] (https://github.com/katrinamarquez/KatrinaMarquez_T1A2/blob/master/Documents/Customer%20Flow%20Chart.png)

Error messages that will show to supplier:
- If the customer enters an item that doesn't match what is listed on the list of products for sale, an invalid input error message will appear and prompt the user to start the order process again. This message will appear after they have entered a quantity. This error message will be displayed in red indicating to the user that they need to re-do some action. 

## Future Development of the Product 
The product was created to have enough functionality for a customer to view products and order. Suppliers needed to be able to add items and contact details. It was created as an MVP product with room to expand on functionality in the future.

SupplierMate will utilise feedback for users when figuring out where to develop the product. 

Finally there is a column for future development of the product/nice to have ideas on the Trello board. Ideas to improve the options avaliable to the product was added as a tracking tool. 

Future development items listed on trello board are:
- Current product will list all the products avaliable to the customer once 'customer' is selected from the main menu. It will make it easier to add new features for customers if customers are presented with other options similar to the supplier menu. For example, the customer menu could be (1) view list of products, (2) order a product and (3) register as a user on app. 

This is classified as a 'nice to have' as it was out of scope for the purpose of the terminal app assessment. 

- Customer is able to view the contact details of the supplier. At the moment, this functionality is restricted to suppliers updating their contact details. Supplier details is created through a class, which means we can add functionality later and expand on what you can do with this data. 

- Supplier is able to view customer orders in app. This was itemised as a future development item as how the orders are stored needed to be refactored.


## Testing
Testing of the product was undertaken during development and code was mended accordingly. 

Link to testing spredsheet: <https://docs.google.com/spreadsheets/d/1mjIBa50OvYpDqXhi2gaala_ZGpCAcwa4-DC2hIJRY4Y/edit?usp=sharing>