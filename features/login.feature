Feature: Go to Ximalaya Website 
Scenario: login ximalaya website email
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "xxx@xxx.com"
    And I fill in field with xpath "//*[@id='userPwd']" with "xxx"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "Girl" within 2 second
    Then I go to "http://test.ximalaya.com/passport/logout"

Scenario: login ximalaya website phone
  Given I go to "http://test.ximalaya.com/passport/login"  
    When I fill in field with xpath "//*[@id='userAccount']" with "xxxxx"
    And I click xpath "//div[@id='mainautocomplete_panel']/dl[1]/a/span" once 
    And I fill in field with xpath "//*[@id='userPwd']" with "xxx"
    And I click xpath "//input[@class='login_btn']" once
    Then I should see "NotVip" within 2 second
    Then I go to "http://test.ximalaya.com/passport/logout"
    Then I close browser
