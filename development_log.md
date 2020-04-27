# Timeline

## 20/04/2020
Majority of the afternoon was spent figuring out which idea to build for the ruby terminal app assessment. My initial idea was an cooking guide for steak. It would cover storage, cooking and different cuts. The main issue was that this may have limited scope to cover enough methods, classes, ruby gems, etc. 


As a result, I started scoping an app where customer can order products from suppliers. Suppliers and customers would have different options when using the app. This version of the app would allow me to extend scope if required.

## 21/04/2020 
The morning focused on documentation and project planning. Documentation that was created: 
- started README;
- flow chart for Suppliers; and 
- flow chart for Customers.
The flow charts mapped out the user experience for customer and suppliers and logic that customers would be taken through. 

During the flow chart creation process I mapped out:
- the users (i.e. Supplier and Customers);
- menu options for each type of user; 
- where the information displaying to the user crosses over between the two users; 
- classes; and 
- inputs required from users. 

![Flow Chart] (/Documents/SupplierMate_Flow_Version2.pdf)

Trello boards were created which mapped out documentation to be completed, methods and classes. Labels indiciate level of difficulty. Categories are:
- Low 
- Medium 
- High 

Coding started for the first page users encounter when using the terminal app. 

![Trello Card Example] (Documents/Welcome Message Trello Card.png)

## 22/04/2020 
Coding completed:
- Welcome message
- Supplier menu
- Consumer menu (i.e. list of products)
- Supplier selects 'view items for sale'
- Supplier selects 'add new item for sale'
- Product class

First bug card created for list of products for sale being printed twice in the terminal. 
![Example of Bug Card] (Documents/Example Bug Card.png)

## 23/04/2020 
Coding completed:
- Function for when a customer is purchasing a product. This took a while as I wanted to show the total price of the order after adding an item to the order array.
- Resolved bugs that came about from coding yesterday. 

Change to customer logic: 
While writing the code for the customer options I encountered a few issues with the flow of information. As a result, I changed the when the customer is provided with a list of products for sale and when the customer is prompted for their details. This had no impact on when the customer was looped back to the list of products for sale. 

The main reason for the change resulted from how the options were flowing from the input by the user. Requesting the customer details at the begining significantly impacted and made it difficult to write logic to create the final invoice and adding new items. Version 2 of updated customer flow chart will be updated as changes have been reflected in the code only. 

Tello Board:
![Trello Board 23 April] (Documents/Board at 23 April 2020.png)

## 24/04/2020 
Coding completed:
- Added in colorize ruby gem. Make identifying parts of the text more obvious to the user in the terminal. 

As this terminal app is heavily dependent upon the users inputting options and seeting lists/menus, I decided to use the colorize ruby gem to help the user differentate between texts. The general rule of thumb followed included: 
- red = error messages;
- blue = questions, menu options and general text; and 
- light blue = total dollar value of order and exiting the app. 
This helped make the app easy to follow for users. 

Tests completed:
- Logging tests for current code that is working as expected. 

Documentation completed: 
- User stories. It was ok to do this at this point during development as most of the user stories were mapped out in the flow chart. 
- (NEEDS TO BE REVIEWED): The order of the flow chart and what information is displayed has changed slightly, as a result of issues encountered when writing the methods. 

Trello Board:
![Trello Board 24 April] (Documents/Board at 24 April 2020.png)

## 25/04/2020 
Coding completed:
- Review and refactored code for when customer is purchasing a product. Difficulty getting total figure for customer orders printing. 

The logic required for the customer experience when ordering the app was difficult. Initally I thought it was 'medium' effort for project tracking purposes. However, it became evident that it should be changed to 'hard' in Trello. This day was spent rewriting and researching different ways to write this logic easier. Additionally, trying multiple ways of writing it to get the list of products, list of order and dollar figure for the order connecting. 

I had difficulty around the looping and getting the right information from hases and arrays and figuring out where messages and logic should sit on the files. See product.rb page > def order_product for final logic.  

## 26/04/2020 
Coding completed:
- Total dollar value of customer order completed. Tidied up code to ensure that invoice for customer is printing correctly. Changed method of calculating total invoice for customer order to case statement. 
- Added class for customer. Create a class when the customer is adding in their contact details after ordering. This input from the customer would finalise the customers order and exit the app. 
- Added in closing messages to make looping of while loop cleaner. General tidy up of supplier and customer options to make sure that their journey is flowing as per updated flow charts.  
- Adding in lines and breaks to make terminal app visually appealing to the user. 
- Updated logic if user selects they are a supplier to case/when/else statement rather than if/elsif/else. This made the main piece of the code easier to read.

Documentation:
- Updated control flows for customer as the order for prompts for user input and exit functionality had changed during building phase. See version 2 of customer flow chart. 

Trello Board:
![Trello Board 26 April] (Documents/Board at 26 April 2020.png)

## 27/04/2020
Coding:
- Added in ruby gem tty-prompt. This makes menu selection with the loops easier to manage. Looping makes sense and is less confusing for the user. 
- Added in command line argument. App offers a personalised welcome message to the app (if they include it in the command line) or generic welcome message (if they do not include it in command line).
- TTY-Prompt broke customer menu. Previously this was indicated by s and c and changed to tty-prompt 1 and 2 option. 

Documentation:
- Running tests on tty-prompt changes. 
- Added in ASCII art to make UI appealing.
- Readme.md completed. 
