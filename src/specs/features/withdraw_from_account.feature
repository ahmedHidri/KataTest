 Feature: Withdraw from account
   As a client of the bank
   I want to withdraw money from my account
   In order to have cash
	
	@ui
   Scenario Outline: An existing client withdraws from his account
       Given an existing client named <username> with <amount> EUR in his account
       When he withdraws <withdraw> EUR from his account
       Then the new balance is <left> EUR
       
        Examples:
        | username | amount | withdraw | left |
        | "pierre-jean" | 100.0 | 10.0 | 90.0 |
        | "pierre-jean" | 0.0 | 10.0 | 0.0 |
       