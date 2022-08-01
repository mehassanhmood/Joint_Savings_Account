# Solidity :
1. The aim of this assignment was to automate the creation of a joint savings account that accepts two user addresses.These addresses will be able to control a joint savings account.
2. In order to do so , following steps were performed :   
 1. Declaring the language version.
 2. Declaring the contract class with folllowing variables :
    1. Two variables representing the two accounts.
    2. One variable representing the last to withdraw.
    3. Finally, two variable representing the last withdrawal amount and the remaining balance.
 3. Defining functions with unique functionality,which are as folllows :
    1. withdraw function :
        1. makes sure that only authorized accounts can withdraw ether.
        2. updates the balance after the withdrawal.
        3. shows the account to make trhe latest withdrawal.
    2. deposit function :
        1. to deposit ether in the account.
    3. setAccounts function :
        1. As the name is self explanatory, it sets the two accounts.
    4. fall back function :
        1. if for some reason the transaction faiuls to proceed forward, ether will be deposited back to the account.
 4. After the aforementioned steps, the next step is to compile using JavaScript VM and fixing any errors in the account.
 5. Deployment of the contract follows the compiling process.
 6. After successfully deploying the contract the functionality of the contract was tested and the results are added in a seperate folder 'Execution_result'.