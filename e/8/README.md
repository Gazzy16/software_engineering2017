
= Task
1. Create Car on url /cars/new
	-Model - string
	-Number - number
	-Color - string
    -year manufactured - timedate

2. Create Manufacture /manufactures/new
	- name - string
	- location - string

3. Each car is manufactured by on Manufacture. Each Manufacture makes a lot of cars. 
4. Validate that when creating a car the color could be only 'red', 'green' or 'blue'
5. Validate that a Manufacture can not make more than 3 cars of a given color in a given year.
6. Show a list of all the cars and their manufacturers
	- this is available at /#{my_index}subjects/ where my_index is your class_number_firstname_lastname (example /11a_17_MartinDatsevsubjects/
	- show a table with the columns : car_id, model, number, color, year, manufacture.name, manufacture.location

Last commit: 4eda23


= Task
1. Create Computer on url /cars/new
    -Model - string
    -Number - number
    -Architecture - string
    -date manufactured - timedate

2. Create Manufacture /manufactures/new
    - name - string
    - location - string

3. Each computer is manufactured by one Manufacture. Each Manufacture makes a lot of computers. 
4. Validate that when creating a computer the architecture could be only 'x86', 'x86_64' or 'amd_64'
5. Validate that a Manufacture can not make more than 3 cars a month from a given architecture
7. Show a list of all the computers and their manufacturers
    - this is available at /#{my_index}subjects/ where my_index is your class_number_firstname_lastname (example /11a_17_MartinDatsevsubjects/
    - show a table with the columns : computer_id, model, number, architecture, date, manufacture.name, manufacture.location

Last commit - ab5a0a0326b439c2a0ba6fdf15810532321b2b93

excluding Martin
Second last commit 3601f8dc58c740be1dfa1bb0b8a8deb4f93f80ff
