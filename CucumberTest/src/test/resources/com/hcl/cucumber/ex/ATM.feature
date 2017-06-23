Feature: Account Holder withdraws cash
	As an Account Holder
	I want to withdraw cash from an ATM
	So that I can get money when the bank is closed
 
  
	Scenario Outline: Account has sufficient funds
		Given the account balance is 4
 			And the card is valid
 			And the machine contains 300
		When the Account Holder requests 20
		Then the ATM should dispense 20
 			And the account balance should be 280
 			And the card should be returned
 	
 	Examples:
 		|account_balance|atm_available|request|result|newBalance|
 		|1004          |100          |20     |20    |80         |
        |1001          |100          |20     |20    |80         |

	
