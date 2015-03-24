Feature: Go to Ximalaya Website
  
Scenario: login ximalaya website  
  Given I go to "http://test.ximalaya.com/"  
     When I fill in field with id "userAccount" with "cbl198901@126.com"
     And I fill in field with id "userPwd" with "cbl1989"
     And  I click id "login_btn" once
     Then I should see "http://test.ximalaya.com/#/" within 2 second
     Then I close browser