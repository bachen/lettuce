#coding=utf-8
from lettuce import *  
from lettuce_webdriver.util import assert_false  
from lettuce_webdriver.util import AssertContextManager 
import time 
  
def input_frame(browser, attribute):
    xpath = "%s" % attribute  
    em = browser.find_element_by_xpath(xpath)  
    return em

def click_button(browser,attribute):
    xpath = "%s" % attribute
    em = browser.find_element_by_xpath(xpath)
    return em

#定位输入框输入关键字
@step('I fill in field with xpath "(.*?)" with "(.*?)"')
def input_text(step,field_name,value):
    with AssertContextManager(step):  
        text_field = input_frame(world.browser, field_name)  
        #text_field.clear()  
        text_field.send_keys(value)
        time.sleep(1)

@step('I click xpath "(.*?)" once')
def btn_click(step,field_name):
    with AssertContextManager(step):
        click_field = click_button(world.browser,field_name)
        click_field.click()
        time.sleep(1)

#关闭浏览器
@step('I close browser')
def close_browser(step):
    world.browser.quit()