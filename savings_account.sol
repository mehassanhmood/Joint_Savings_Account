// declaring the language version:
pragma solidity ^0.5.0;
// setting up the contract class :
contract JointSavings{
    // defining variables and thier type as solidity is statically typed:
    address payable accountOne;
    address payable accountTwo;
    address public lasttoWithdraw;
    uint public lasttoWithdrawAmount;
    uint public contractBalance;
    // setting up the withdrawal function:
    function withdraw(uint amount ,address payable recipient)public{
        require (recipient == accountOne || recipient == accountTwo,"you dont own this account!");
        require(amount < address(this).balance ,"Insufficient Balance!");

        if (lasttoWithdraw != recipient){
            lasttoWithdraw = recipient;
        }
        recipient.transfer(amount);
        lasttoWithdrawAmount = amount;

        contractBalance = address(this).balance;
    
    }
    // setting up the deposit function:
    function deposit()public payable {
        contractBalance =address(this).balance;
    }
    // setting the accounts:
    function setAccounts(address payable account1, address payable account2)public{
        accountOne = account1;
        accountTwo = account2;
    }
    // setting the fall back function:
    function() external payable{}
}