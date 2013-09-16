# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# Account roles
# Managers who can do every thing.
Role.create(:role_name => 'Administrator')       #role_ids: 1
Role.create(:role_name => 'Admission_Manager')   #role_ids: 2
Role.create(:role_name => 'News_Manager')        #role_ids: 3
Role.create(:role_name => 'Attendance_Manager')  #role_ids: 4
Role.create(:role_name => 'Examination_Manager') #role_ids: 5
Role.create(:role_name => 'Time_Table_Manager')  #role_ids: 6
Role.create(:role_name => 'Finance_Manager')     #role_ids: 7
Role.create(:role_name => 'Settings_Manager')    #role_ids: 8
Role.create(:role_name => 'Support_Manager')     #role_ids: 9
# Viewers who can view only
Role.create(:role_name => 'Student_Viewer')      #role_ids: 10
Role.create(:role_name => 'News_Viewer')         #role_ids: 11
Role.create(:role_name => 'Attendance_Viewer')   #role_ids: 12
Role.create(:role_name => 'Examination_Viewer')  #role_ids: 13
Role.create(:role_name => 'Time_Table_Viewer')   #role_ids: 14
Role.create(:role_name => 'Support_Client')      #role_ids: 15

###################################################################################################


###################################################################################################

# States Model
State.create(:name => 'Emergency', :background => '#FF0000', :color => 'white')
State.create(:name => 'High', :background => '#FFA500', :color => 'white')
State.create(:name => 'Normal', :background => '#FFFF00', :color => 'white')

###################################################################################################

# Department Names
EmployeeDepartment.create(:name => 'Department of Business Administration', :code => '15A')
EmployeeDepartment.create(:name => 'Department of Computer Science', :code => '14B')
EmployeeDepartment.create(:name => 'Department of Finance', :code => '13C')
EmployeeDepartment.create(:name => 'Department of Management Information System', :code => '12D')

###################################################################################################

#Batches Names - Computer Science
#English Sector Only
Batch.create(:name => 'Computer Science - First year')
Batch.create(:name => 'Computer Science - Second year')
Batch.create(:name => 'Computer Science - Third year')
Batch.create(:name => 'Computer Science - Fourth year')
Batch.create(:name => 'Computer Science - Fifth year')

###################################################################################################

#Batches should represent: where a student registered or in which year he is.
#Batches Names - Management Information System

#English Sector
Batch.create(:name => 'Management Information System (English) - First year')
Batch.create(:name => 'Management Information System (English) - Second year')
Batch.create(:name => 'Management Information System (English) - Third year')
Batch.create(:name => 'Management Information System (English) - Fourth year')
#Arabic Sector
Batch.create(:name => 'Management Information System (Arabic) - First year')
Batch.create(:name => 'Management Information System (Arabic) - Second year')
Batch.create(:name => 'Management Information System (Arabic) - Third year')
Batch.create(:name => 'Management Information System (Arabic) - Fourth year')

###################################################################################################

#Batches Name - Business Administration (Specialization 
	                                    #beginning at Third year 
	                                    #Business Administration, Accounting and Economics)
#First year  English Sector
Batch.create(:name => 'Business Administration (English) - First year')
#Second year English Sector
Batch.create(:name => 'Business Administration (English) - Second year')
#Third year English Sector
Batch.create(:name => 'Business Administration (English) - Third year')
Batch.create(:name => 'Business Administration (Economics) (English) - Third year')
Batch.create(:name => 'Business Administration (Accounting) (English) - Third year')
#Fourth year English Sector
Batch.create(:name => 'Business Administration (English) - Fourth year')
Batch.create(:name => 'Business Administration (Economics) (English) - Fourth year')
Batch.create(:name => 'Business Administration (Accounting) (English) - Fourth year')

#First year Arabic Sector
Batch.create(:name => 'Business Administration (Arabic) - First year')
#Second year Arabic Sector
Batch.create(:name => 'Business Administration (Arabic) - Second year')
#Third year Arabic Sector
Batch.create(:name => 'Business Administration (Arabic) - Third year')
Batch.create(:name => 'Business Administration (Economics) (Arabic) - Third year')
Batch.create(:name => 'Business Administration (Accounting) (Arabic) - Third year')
#Fourth year Arabic Sector
Batch.create(:name => 'Business Administration (Arabic) - Fourth year')
Batch.create(:name => 'Business Administration (Economics) (Arabic) - Fourth year')
Batch.create(:name => 'Business Administration (Accounting) (Arabic) - Fourth year')
###################################################################################################

# Accounts
User.create(email: "admin@triton.com" , password: "123456" , password_confirmation: "123456",
			first_name: "Mostafa" , last_name: "Hussein", user_name: "Dexter" , role_ids: 1, user_type: "Admin")
User.create(email: "employee@triton.com", password: "123456", password_confirmation: "12345",
			first_name: "Jann", last_name: "Schier", user_name: "Jann", user_type: "Employee")
User.create(email: "student@triton.com", password: "123456", password_confirmation: "12345",
			first_name: "Melissa", last_name: "Gade", user_name: "Melissa", user_type: "Student")
User.create(email: "parent@triton.com", password: "123456", password_confirmation: "12345",
			first_name: "Phil", last_name: "Masi", user_name: "Phil", user_type: "Parent")

###################################################################################################

# Country / Nationality name
Country.create(:name => "Algeria")
Country.create(:name => "Bahrain")
Country.create(:name => "Egypt")
Country.create(:name => "Iraq")
Country.create(:name => "Jordan")
Country.create(:name => "Kuwait")
Country.create(:name => "Lebanon")
Country.create(:name => "Libya")
Country.create(:name => "Morocco")
Country.create(:name => "Oman")
Country.create(:name => "Palestine")
Country.create(:name => "Qatar")
Country.create(:name => "Saudi Arabia")
Country.create(:name => "Syria")
Country.create(:name => "Sudan")
Country.create(:name => "Tunisia")
Country.create(:name => "United Arab Emirates")
Country.create(:name => "Yemen")

###################################################################################################

# Help topic
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
