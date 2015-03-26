#coding=utf-8
from lettuce import *  
from lettuce_webdriver.util import assert_false  
from lettuce_webdriver.util import AssertContextManager 
import time
from selenium.webdriver.common.action_chains import ActionChains

def find(browser, attribute):
    xpath = "%s" % attribute  
    em = browser.find_element_by_xpath(xpath)  
    return em

def drag_and_drop(browser,attribute1,attribute2):
    xpath1 = "%s" % attribute1
    xpath2 = "%s" % attribute2
    em1 = browser.find_element_by_xpath(xpath1)
    em2 = browser.find_element_by_xpath(xpath2)
    ActionChains(browser).drag_and_drop(em1,em2).perform()

def hover(browser,attribute):
    xpath = "%s" % attribute
    em = browser.find_element_by_xpath(xpath)
    ActionChains(browser).move_to_element(em).perform()

#定位输入框输入关键字
@step('I fill in field with xpath "(.*?)" with "(.*?)"')
def input_text(step,field_name,value,clear=None):
    with AssertContextManager(step):  
        text_field = find(world.browser, field_name)  
        if clear:
            text_field.clear()
        text_field.send_keys(value)
        time.sleep(1)

@step('I click xpath "(.*?)" once')
def btn_click(step,field_name):
    with AssertContextManager(step):
        click_field = find(world.browser,field_name)
        click_field.click()
        time.sleep(1)

@step('I drag xpath "(.*?)" to xpath "(.*?)"')
def drag_drop(step,field_name1,field_name2):
    with AssertContextManager(step):
        drag_and_drop(world.browser,field_name1,field_name2)
        time.sleep(1)

@step('I hover on xpath "(.*?)"')
def hover_em(step,field_name):
    with AssertContextManager(step):
        hover(world.browser,field_name)
        time.sleep(1)

#关闭浏览器
@step('I close browser')
def close_browser(step):
    world.browser.quit()