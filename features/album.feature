Feature: Go to Ximalaya Website 
Scenario: login ximalaya website
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "cbl198901@126.com"
    And I fill in field with xpath "//*[@id='userPwd']" with "cbl1989"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "Girl" within 2 second

Scenario: create new album
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "15922330001"
    And I click xpath "//div[@id='mainautocomplete_panel']/dl[1]/a/span" once 
    And I fill in field with xpath "//*[@id='userPwd']" with "cbl1989"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "NotVip" within 2 second
    Then I close browser

Scenario: edit album
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "15922330001"
    And I click xpath "//div[@id='mainautocomplete_panel']/dl[1]/a/span" once 
    And I fill in field with xpath "//*[@id='userPwd']" with "cbl1989"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "NotVip" within 2 second
    Then I close browser

Scenario: delete album
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "15922330001"
    And I click xpath "//div[@id='mainautocomplete_panel']/dl[1]/a/span" once 
    And I fill in field with xpath "//*[@id='userPwd']" with "cbl1989"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "NotVip" within 2 second
    Then I close browser