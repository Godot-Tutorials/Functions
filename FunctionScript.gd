extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var check1 = basicFunction()
	print('\nbasicFunction, uses pass: ', check1, '\n')
	
	var check2 = basicParam(10)
	print('basicParam, uses return: ', check2, '\n')
	
	# Param needs to be string or throws error
	var check3 = paramData('String')
	print('paramData, uses pass: ', check3, '\n')
	
	# Param needs to be a string or empty
	var check4 = defaultParam()
	print('defaultParam, uses pass: ', check4, '\n')
	
	# function has return type void declared
	var check5 = returnVoidType()
	print('returnVoidType, uses return: ', check4, '\n')
	
	# function uses return type int
	var check6 = returnType()
	print('returnType, uses return: ', check6, '\n')
	
	pass # Replace with function body.



# Basic function
func basicFunction():
	pass # you can also use 'return', the value Null is returned regardless 

# Basic Function with Params
func basicParam(parameter):
	# the name in the parameter is a variable, it holds data
	print('parameter = ', parameter)
	return

# Basic Function with parameter data type
func paramData(param: String):
	print('param = ', param)

# Function with a default value in the parameter
func defaultParam(param := 'Hello'): # data type is inferred by the default value
	print('param = ', param)

# basically the same as the top
func defaultType(param: String = 'Hello'):
	print('param = ', param)

# Function with void return type 
func returnVoidType() -> void:
	return # empty return type

# Function with nonvoid return type 
func returnType() -> int:
	return 10 # returning anything other than int will throw an error







var playerHealth = 100
# Samples of Naming Conventions
func getPlayerHealth():
	return playerHealth # returns 100

func healPlayer(healthPoints:int):
	playerHealth = playerHealth + healthPoints
	# playerHealth += healthPoints

func damagePlayer(damagePoints := playerHealth):
	playerHealth = playerHealth - damagePoints
	# playerHealth -= damagePoints


