# lettuce
test samples for lettuce

setup:

installation: pip install lettuce

sample:
1. under ../lettuce make new folder: mkdir features
2. under ../features, create files: zero.feature and steps.py
3. zero.feature: 
Feature: Compute factorial
	In order to play with Lettuce
	As beginners
	We'll implement factorial

	Scenario: Factorial of 0
		Given I have the number 0
		When I compute its factorial
		Then I see the number 1

	Scenario: Factorial of 1
		Given I have the number 1
		When I compute its factorial
		Then I see the number 1

	Scenario: Factorial of 2
		Given I have the number 2
		When I compute its factorial
		Then I see the number 2

	Scenario: Factorial of 3
		Given I have the number 3
		When I compute its factorial
		Then I see the number 6

	Scenario: Factorial of 4
		Given I have the number 4
		When I compute its factorial
		Then I see the number 24
		
5. steps.py:
from lettuce import *

@step('I have the number (\d+)')
def have_the_number(step,number):
	world.number = int(number)

@step('I compute its factorial')
def compute_its_factorial(step):
	world.number = factorial(world.number)

@step('I see the number (\d+)')
def check_number(step,expected):
	expected = int(expected)
	assert world.number == expected, \
	"Got %d " %world.number

def factorial(number):
	number = int(number)
	if (number == 0) or (number == 1):
		return 1
	else:
		return number*factorial(number-1)
		
5. run test: ../lettuce $ lettuce
