
= Task
1. Create Teacher on url /teacher/new
	-first name
	-middle name
	-title
	-subject

2. Create SchoolClass /school_classes/new
	- school_class day
	- teacher id

3. Validate that when creating school class the teacher id for existing teacher is specified. If not the validation should fail
4. Validate that no two teachers with the same first name could be created
5. Show a list of school classes and which teacher teaches them
	- this is available at /#{my_index}subjects/ where my_index is your class_number_firstname_lastname (example /11a_17_MartinDatsevsubjects/
	- show a table with the columns : school class day, teacher last name, teacher first name, teacher title


