Feature: Go to Ximalaya Website 
Scenario: login ximalaya website
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "cbl198901@126.com"
    And I fill in field with xpath "//*[@id='userPwd']" with "cbl1989"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "Girl" within 2 second

Scenario: create new album
  Given I go to "http://test.ximalaya.com/new_album"  
    When I fill in field with xpath "//*[@id='title']" with "test_create_album"
    And I click xpath "//*[@id="origin"]/div[@class='selecter-selected']" once 
    And I click xpath "//*[@id="origin"]/div[@class='selecter-options']/ul/li[1]" once 
    And I click xpath "//*[@id="genre"]/div[@class='selecter-selected']" once 
    And I click xpath "//*[@id="genre"]/div[@class='selecter-options']/ul/li[1]" once 
    And I click xpath "//*[@id="submit_save"]" once 
    Then I should see "test_create_album" within 4 second
    Then I go to "http://test.ximalaya.com/passport/logout"