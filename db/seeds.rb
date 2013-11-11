# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# # #

# # # Account roles
Role.create(:role_name => 'Administrator')       #role_ids: 1

Role.create(:role_name => 'Student_admission_staff')   #role_ids: 2
Role.create(:role_name => 'Student_details_viewer')      #role_ids: 3

Role.create(:role_name => 'HR_staff') #role_ids: 4
Role.create(:role_name => 'Employee_details_viewer') #role_ids 5

Role.create(:role_name => 'Department_manager') #role_ids: 6

Role.create(:role_name => 'Complaint_manager')     #role_ids: 7
Role.create(:role_name => 'Complaint_staff') #role_ids: 8
Role.create(:role_name => 'Complaint_assigner')    #role_ids: 9
Role.create(:role_name => 'Complainer')      #role_ids: 10
Role.create(:role_name => 'Academic_advisor')      #role_ids: 10
Role.create(:role_name => 'Academic_support')      #role_ids: 11
# # # ###################################################################################################

# # # # Accounts
User.create(email: "admin@academy.com" , password: "123456" , password_confirmation: "123456",
			first_name: "Mostafa" , last_name: "Hussein", user_name: "Root" , role_ids: 1, user_type: "admin")
# # # ###################################################################################################


# # # ###################################################################################################

# # # # States Model
State.create(:name => 'Emergency', :background => '#FF60C9', :color => 'black')
State.create(:name => 'High', :background => '#FFA500', :color => 'black')
State.create(:name => 'Normal', :background => '#FFFF00', :color => 'black')
State.create(:name => 'Undefined',:background => '#A0A0A0', :color => 'black')

# # # ###################################################################################################

# # # # Department Names
EmployeeDepartment.create(:name => 'Business Administration', :code => '15A') #id: 1
EmployeeDepartment.create(:name => 'Accounting', :code => '14B') #id: 2
EmployeeDepartment.create(:name => 'Economics', :code => '13C') #id: 3 
EmployeeDepartment.create(:name => 'Management Information System', :code => '12D') #id: 4
EmployeeDepartment.create(:name => 'Basic Science', :code => '11E') #id: 5
EmployeeDepartment.create(:name => 'Academic Support', :code => '10F') #id: 6
# # # #------------------------------------------------------------------------------------------------#
EmployeePosition.create(:position_title => 'Professor', employee_department_id: 1) #1 #1
EmployeePosition.create(:position_title => 'Assistant Lecturer', employee_department_id: 1) #1 #2
EmployeePosition.create(:position_title => 'Teaching Assistant', employee_department_id: 1) #1 #3

EmployeePosition.create(:position_title => 'Professor ', employee_department_id: 2) #2 #4
EmployeePosition.create(:position_title => 'Assistant Lecturer ', employee_department_id: 2) #2 #5
EmployeePosition.create(:position_title => 'Teaching Assistant ', employee_department_id: 2) #2 #6

EmployeePosition.create(:position_title => 'Professor  ', employee_department_id: 3) #3 #7
EmployeePosition.create(:position_title => 'Assistant Lecturer  ', employee_department_id: 3) #3 #8
EmployeePosition.create(:position_title => 'Teaching Assistant  ', employee_department_id: 3) #3 #9

EmployeePosition.create(:position_title => 'Professor   ', employee_department_id: 4) #4 #10
EmployeePosition.create(:position_title => 'Assistant Lecturer   ', employee_department_id: 4) #4 #11
EmployeePosition.create(:position_title => 'Teaching Assistant   ', employee_department_id: 4) #4 #12

EmployeePosition.create(:position_title => 'Professor    ', employee_department_id: 5) #5 #13
EmployeePosition.create(:position_title => 'Assistant Lecturer    ', employee_department_id: 5) #5 #14
EmployeePosition.create(:position_title => 'Teaching Assistant    ', employee_department_id: 5) #5 #15

EmployeePosition.create(:position_title => 'Help Desk', employee_department_id: 6) #6 #16

# # # #------------------------------------------------------------------------------------------------#
# # # Employee Names #guidance supervisors #teaching staff
Employee.create(employee_number: '1001' , first_name: 'Amr' , middle_name: '', last_name: 'Abd Elgawad' ,
 				 gender: 'm' , employee_department_id: 2, email: "employee1@academy.com",
 				  :employee_category => 'Teaching Staff', :employee_position_id => 4)
Employee.create(employee_number: '1002' , first_name: 'Nahla' , middle_name: '', last_name: 'Galal' ,
				 gender: 'f' , employee_department_id: 2, email: "employee2@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 4)
# #--------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1003' , first_name: 'Abd Elwahed' , middle_name: 'Mohamed', last_name: 'Ahmed' ,
				 gender: 'm' , employee_department_id: 1, email: "employee3@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 1)
Employee.create(employee_number: '1004' , first_name: 'Marwa' , middle_name: 'Said', last_name: 'Mohamed' ,
				 gender: 'f' , employee_department_id: 1, email: "employee4@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 1)
Employee.create(employee_number: '1005' , first_name: 'Doaa' , middle_name: 'Omar', last_name: 'Abd Allah' ,
				 gender: 'f' , employee_department_id: 1, email: "employee5@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 1)
Employee.create(employee_number: '1006' , first_name: 'Yasser' , middle_name: 'Saber', last_name: 'Mohamed' ,
				 gender: 'm' , employee_department_id: 1, email: "employee6@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 1)
# #--------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1007' , first_name: 'Mohamed' , middle_name: 'Ashry', last_name: 'Hassan' ,
				 gender: 'm' , employee_department_id: 3, email: "employee7@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 7)
Employee.create(employee_number: '1008' , first_name: 'Nessren' , middle_name: 'Ahmed', last_name: 'Abbas' ,
				 gender: 'f' , employee_department_id: 3, email: "employee8@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 7)
# #--------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1009' , first_name: 'Hanaa' , middle_name: 'Mousa', last_name: 'Abd Elrahman' ,
				 gender: 'f' , employee_department_id: 5, email: "employee9@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 13)
Employee.create(employee_number: '1010' , first_name: 'Ola' , middle_name: 'Abd Elfatah', last_name: 'Ahmed' ,
				 gender: 'f' , employee_department_id: 5, email: "employee10@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 13)
# # #-----------------------------------------------------------------------------------------------------------------#
# # #-----------------------------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1011' , first_name: 'Aya' , middle_name: 'Mahmoud', last_name: 'Bshir' ,
				 gender: 'f' , employee_department_id: 4, email: "employee11@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
Employee.create(employee_number: '1012' , first_name: 'Nanis' , middle_name: 'Nabil', last_name: 'Mohamed' ,
				 gender: 'f' , employee_department_id: 4, email: "employee12@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
Employee.create(employee_number: '1013' , first_name: 'Mariz' , middle_name: 'Safwat', last_name: 'George' ,
				 gender: 'f' , employee_department_id: 4, email: "employee13@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
Employee.create(employee_number: '1014' , first_name: 'Dina' , middle_name: 'Mohamed', last_name: 'Mahmoud' ,
				 gender: 'f' , employee_department_id: 4, email: "employee14@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
Employee.create(employee_number: '1015' , first_name: 'Alaa' , middle_name: 'Mostafa', last_name: 'Abd Elaal' ,
				 gender: 'f' , employee_department_id: 4, email: "employee15@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
Employee.create(employee_number: '1016' , first_name: 'Lina' , middle_name: 'Mohamed', last_name: 'Khattab' ,
				 gender: 'f' , employee_department_id: 4, email: "employee16@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 12)
# # #--------------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1017' , first_name: 'Sherif' , middle_name: 'Farouq', last_name: 'Elwy' ,
				 gender: 'm' , employee_department_id: 2, email: "employee17@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 5)
Employee.create(employee_number: '1018' , first_name: 'Hanan' , middle_name: 'Ahmed', last_name: 'Talaat' ,
				 gender: 'f' , employee_department_id: 2, email: "employee18@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 5)
Employee.create(employee_number: '1019' , first_name: 'Rasha' , middle_name: 'Mohamed', last_name: 'Hamdy' ,
				 gender: 'f' , employee_department_id: 2, email: "employee19@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 5)
Employee.create(employee_number: '1020' , first_name: 'Heba' , middle_name: 'Hassan', last_name: 'Megahed' ,
				 gender: 'f' , employee_department_id: 2, email: "employee20@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 5)
Employee.create(employee_number: '1021' , first_name: 'Raghda' , middle_name: '', last_name: 'Salah' ,
				 gender: 'f' , employee_department_id: 2, email: "employee21@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 5)
Employee.create(employee_number: '1022' , first_name: 'Tareq' , middle_name: 'Saad', last_name: 'Ahmed' ,
				 gender: 'm' , employee_department_id: 2, email: "employee22@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 6)
Employee.create(employee_number: '1023' , first_name: 'Mohamed' , middle_name: 'Said', last_name: 'Abd Elhafez' ,
				 gender: 'm' , employee_department_id: 2, email: "employee23@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 6)
Employee.create(employee_number: '1024' , first_name: 'Khaled' , middle_name: 'Mohamed', last_name: 'Mahmoud' ,
				 gender: 'm' , employee_department_id: 2, email: "employee24@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 6)
# #-------------------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1025' , first_name: 'Mohamed' , middle_name: 'Hussein', last_name: 'Salah' ,
				 gender: 'm' , employee_department_id: 1, email: "employee25@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 2)
Employee.create(employee_number: '1026' , first_name: 'Elshaimaa' , middle_name: 'Nabil', last_name: 'Ebrahim' ,
				 gender: 'f' , employee_department_id: 1, email: "employee26@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 2)
Employee.create(employee_number: '1027' , first_name: 'Amira' , middle_name: 'Mohamed', last_name: 'Ahmed' ,
				 gender: 'f' , employee_department_id: 1, email: "employee27@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 2)
Employee.create(employee_number: '1028' , first_name: 'Elham' , middle_name: 'Abd Ellatef', last_name: 'Abd Elghafar' ,
				 gender: 'f' , employee_department_id: 1, email: "employee28@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 2)
Employee.create(employee_number: '1029' , first_name: 'Rady' , middle_name: 'Mohamed', last_name: 'Hussein' ,
				 gender: 'm' , employee_department_id: 1, email: "employee29@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 3)
# # #-------------------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1030' , first_name: 'Sherin' , middle_name: 'Ahmed', last_name: 'Abd Allah' ,
				 gender: 'f' , employee_department_id: 3, email: "employee30@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
Employee.create(employee_number: '1031' , first_name: 'Rania' , middle_name: 'Ramadan', last_name: 'Moawad' ,
				 gender: 'f' , employee_department_id: 3, email: "employee31@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
Employee.create(employee_number: '1032' , first_name: 'Abd Elaziz' , middle_name: '', last_name: 'Abd Elmeged' ,
				 gender: 'm' , employee_department_id: 3, email: "employee32@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
Employee.create(employee_number: '1033' , first_name: 'Sbah' , middle_name: 'Salah', last_name: 'Abd Allah' ,
				 gender: 'f' , employee_department_id: 3, email: "employee33@academy.com",
				  :employee_category => 'Teaching Staff',:employee_position_id => 8)
Employee.create(employee_number: '1034' , first_name: 'Ahmed' , middle_name: '', last_name: 'Ramzy' ,
				 gender: 'm' , employee_department_id: 3, email: "employee34@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
Employee.create(employee_number: '1035' , first_name: 'Mohamed' , middle_name: 'Mahmoud', last_name: 'Ahmed' ,
				 gender: 'm' , employee_department_id: 3, email: "employee35@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
Employee.create(employee_number: '1036' , first_name: 'Dalia' , middle_name: 'Farouq', last_name: 'Othman' ,
				 gender: 'f' , employee_department_id: 3, email: "employee36@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 8)
# # #---------------------------------------------------------------------------------------------------------#

Employee.create(employee_number: '1037' , first_name: 'Dina' , middle_name: 'Mohamed', last_name: 'Ahmed' ,
				 gender: 'f' , employee_department_id: 5, email: "employee37@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1038' , first_name: 'Marwa' , middle_name: 'Yehia', last_name: 'Ramadan' ,
				 gender: 'f' , employee_department_id: 5, email: "employee38@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1039' , first_name: 'Amira' , middle_name: 'Mohamed', last_name: 'Hamdy' ,
				 gender: 'f' , employee_department_id: 5, email: "employee39@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1040' , first_name: 'Mohamed' , middle_name: 'Salem', last_name: 'Elbaz' ,
				 gender: 'm' , employee_department_id: 5, email: "employee40@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1041' , first_name: 'Amr' , middle_name: 'Mohamed', last_name: 'Salah Eldin' ,
				 gender: 'm' , employee_department_id: 5, email: "employee41@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1042' , first_name: 'Mamdouh' , middle_name: 'Ahmed', last_name: 'Mohamed' ,
				 gender: 'm' , employee_department_id: 5, email: "employee42@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 14)
Employee.create(employee_number: '1043' , first_name: 'Tamer' , middle_name: 'Rezq', last_name: 'Abd Elmenaem' ,
				 gender: 'm' , employee_department_id: 5, email: "employee43@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 15)

# ###################################################################################################
####leadership
Employee.create(employee_number: '1044' , first_name: 'Mohamed' , middle_name: '' , last_name: 'Shaaban',
				gender: 'm' , employee_department_id: 4 , email: 'employee44@academy.com' , 
				employee_category: 'Teaching Staff' , employee_position_id: 10)
Employee.create(employee_number: '1045' , first_name: 'Hesham' , middle_name: '' , last_name: 'Mahmoud', 
				 gender: 'm' , employee_department_id: 4 , email: 'employee45@academy.com' , 
				employee_category: 'Teaching staff' , employee_position_id: 10) 
Employee.create(employee_number: '1046' , first_name: 'Ahmed' , middle_name: '' , last_name: 'Attia',
				gender: 'm' , employee_department_id: 4 , email: 'emolpyee46@academy.com' , 
				employee_category: 'Teaching Staff' , employee_position_id: 10)
Employee.create(employee_number: '1047' , first_name: 'Sameh', middle_name: '' , last_name: 'Saudy' ,
				gender: 'm' , employee_department_id: 2 , email: 'employee47@academy.com' , 
				employee_category: 'Teaching Staff' , employee_position_id: 4)
Employee.create(employee_number: '1048' , first_name: 'Mohamed' , middle_name: '' , last_name: 'Alfrargy',
				gender: 'm' , employee_department_id: 2 , email: 'employee48@academy.com' , 
				employee_category: 'Teaching Staff' , employee_position_id: 4)
##-----------------------------------------------------------------------------------------------------------------------------##

Employee.create(employee_number: '1049' , first_name: 'Katharyn' , middle_name: '' , last_name: 'Paxson',
 				gender: 'f' , employee_department_id: 6 , email: 'employee49@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1050' , first_name: 'Mertie' , middle_name: '' , last_name: 'Seman',
 				gender: 'f' , employee_department_id: 6 , email: 'employee50@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1051' , first_name: 'Denny' , middle_name: '' , last_name: 'Kantner',
 				gender: 'm' , employee_department_id: 6 , email: 'employee51@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1052' , first_name: 'Gaylene' , middle_name: '' , last_name: 'Archer',
 				gender: 'f' , employee_department_id: 6 , email: 'employee52@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1053' , first_name: 'Antonina' , middle_name: '' , last_name: 'Wille',
 				gender: 'f' , employee_department_id: 6 , email: 'employee53@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1054' , first_name: 'Jamee' , middle_name: '' , last_name: 'Cornwall',
 				gender: 'f' , employee_department_id: 6 , email: 'employee54@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1055' , first_name: 'Jennifer' , middle_name: '' , last_name: 'Periera',
 				gender: 'f' , employee_department_id: 6 , email: 'employee55@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1056' , first_name: 'Alisia' , middle_name: '' , last_name: 'Bruner',
 				gender: 'f' , employee_department_id: 6 , email: 'employee56@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1057' , first_name: 'Michaela' , middle_name: '' , last_name: 'Wentworth',
 				gender: 'f' , employee_department_id: 6 , email: 'employee57@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
Employee.create(employee_number: '1058' , first_name: 'Nicolasa' , middle_name: '' , last_name: 'Circle',
 				gender: 'f' , employee_department_id: 6 , email: 'employee58@academy.com' , 
				employee_category: 'Non-teaching Staff' , employee_position_id: 16)
###############################################################################################################
Employee.create(employee_number: '1059' , first_name: 'Habiba' , middle_name: 'Nour Eldin', last_name: 'Mostafa' ,
 				 gender: 'f' , employee_department_id: 1, email: "employee59@academy.com",
 				  :employee_category => 'Teaching Staff', :employee_position_id => 2)
Employee.create(employee_number: '1060' , first_name: 'Heba' , middle_name: 'Elsaid', last_name: 'Mohamed' ,
				 gender: 'f' , employee_department_id: 3, email: "employee60@academy.com",
				  :employee_category => 'Teaching Staff', :employee_position_id => 9)
# # #################################################################################################################

#Batches should represent: where a student registered or in which year he is.
#Batches Names - Management Information System

# #English Sector
# Batch.create(:name => '1 MIS E')
# Batch.create(:name => '2 MIS E')
# Batch.create(:name => '3 MIS E')
# Batch.create(:name => '4 MIS E')

# #Arabic Sector
# Batch.create(:name => '1 MIS A')
# Batch.create(:name => '2 MIS A')
# Batch.create(:name => '3 MIS A')
# Batch.create(:name => '4 MIS A')

###################################################################################################

# #Batches Name - Business Administration 
# Batch.create(:name => '1 BUS E')
# Batch.create(:name => '2 BUS E')
# Batch.create(:name => '3 BUS E')
# Batch.create(:name => '4 BUS E')

# #Arabic Sector
# Batch.create(:name => '1 BUS A')
# Batch.create(:name => '2 BUS A')
# Batch.create(:name => '3 BUS A')
# Batch.create(:name => '4 BUS A')


# StudentClass.create(:name => '1', :batch_id => 1)
# StudentClass.create(:name => '2', :batch_id => 1)
# StudentClass.create(:name => '3', :batch_id => 1)
# StudentClass.create(:name => '4', :batch_id => 1)
# StudentClass.create(:name => '1', :batch_id => 2)
# StudentClass.create(:name => '2', :batch_id => 2)
# StudentClass.create(:name => '3', :batch_id => 2)
# StudentClass.create(:name => '4', :batch_id => 2)
# StudentClass.create(:name => '5', :batch_id => 2)


# ###################################################################################################
# 1 business english
#class 1
# Student.create(admission_date: "2013-8-15", first_name: "Abanoub" , middle_name: "Fawzy", last_name: "Kamal", gender: 'm', email: 'student1@academy.com',batch_id: 1, student_class_id: 1)
# Student.create(admission_date: "2013-8-15", first_name: "Ahmed", middle_name: "Hamdy", last_name: "Mostafa", gender: 'm', email: 'student2@academy.com', batch_id: 1, student_class_id: 1)
# #class 2
# Student.create(admission_date: "2013-8-15", first_name: "Ahmed", middle_name: "Mohsen", last_name: "Abd Elghafar", gender: 'm', email: 'student3@academy.com', batch_id: 1, student_class_id: 2)
# Student.create(admission_date: "2013-8-15", first_name: "Ahmed", middle_name: "Mohamed", last_name: "Hagag", gender: 'm', email: 'student4@academy.com', batch_id: 1, student_class_id: 2)
# #class 3
# Student.create(admission_date: "2013-8-15", first_name: "Gehad", middle_name: "Essam", last_name: "Mohamed", gender: 'f', email: 'student5@academy.com', batch_id: 1, student_class_id: 3)
# Student.create(admission_date: "2013-9-15", first_name: "Randa", middle_name: "Anes", last_name: "Hosny", gender: 'f', email: 'student6@academy.com', batch_id: 1, student_class_id: 3)
# #class 4
# Student.create(admission_date: "2013-9-15", first_name: "Saleh", middle_name: "Hassan", last_name: "Abd Elaziz", gender: 'm', email: 'student7@academy.com', batch_id: 1, student_class_id: 4)
# Student.create(admission_date: "2013-9-15", first_name: "Doha", middle_name: "Ahmed Eldin", last_name: "Qotb", gender: 'f', email: 'student8@academy.com', batch_id: 1, student_class_id: 4)
# #class 5
# Student.create(admission_date: "2013-9-15", first_name: "Amr", middle_name: "Abd Elazeem", last_name: "Mohamed", gender: 'm', email: 'student9@academy.com', batch_id: 1, student_class_id: 5)
# Student.create(admission_date: "2013-9-15", first_name: "Mohamed", middle_name: "Osama", last_name: "Abd Elhamid", gender: 'm', email: 'student10@academy.com', batch_id: 1, student_class_id: 5)
# #class 6
# Student.create(admission_date: "2013-9-20", first_name: "Mohamed", middle_name: "Abd Elmenaem", last_name: "Mohamed", gender: 'm', email: 'student11@academy.com', batch_id: 1, student_class_id: 6)
# Student.create(admission_date: "2013-9-20", first_name: "Mohamed", middle_name: "Abd Elnaem", last_name: "Mohamed", gender: 'm', email: 'student12@academy.com', batch_id: 1, student_class_id: 6)
# #class 7
# Student.create(admission_date: "2013-9-20", first_name: "Mahmoud", middle_name: "Mohamed", last_name: "Sobhy", gender: 'm', email: 'student13@academy.com', batch_id: 1, student_class_id: 7)
# Student.create(admission_date: "2013-9-22", first_name: "Marwan", middle_name: "Mohamed", last_name: "Abd Elhafez", gender: 'm', email: 'student14@academy.com', batch_id: 1, student_class_id: 7)
# #class 8
# Student.create(admission_date: "2013-9-22", first_name: "Nariman", middle_name: "Mohamed", last_name: "Salem", gender: 'f', email: 'student15@academy.com', batch_id: 1, student_class_id: 8)
# Student.create(admission_date: "2013-9-22", first_name: "Hesham", middle_name: "Ahmed", last_name: "Hassan", gender: 'm', email: 'student16@academy.com', batch_id: 1, student_class_id: 8)
# # # #=========================================================================================#
# 1 business english
# # # class 1
# Student.create(admission_date: "2013-10-15", first_name: "Fawzy" , middle_name: "", last_name: "Kamal", gender: 'm', email: 'student17@academy.com',batch_id: 4, student_class_id: 1)
# Student.create(admission_date: "2013-10-15", first_name: "Hamdy", middle_name: "", last_name: "Mostafa", gender: 'm', email: 'student18@academy.com', batch_id: 4, student_class_id: 1)
# #class 2
# Student.create(admission_date: "2013-10-15", first_name: "Ahmed", middle_name: "", last_name: "Abd Elghafar", gender: 'm', email: 'student19@academy.com', batch_id: 4, student_class_id: 2)
# Student.create(admission_date: "2013-10-15", first_name: "Ahmed", middle_name: "", last_name: "Hagag", gender: 'm', email: 'student20@academy.com', batch_id: 4, student_class_id: 2)
# #class 3
# Student.create(admission_date: "2013-10-15", first_name: "Gehad", middle_name: "", last_name: "Mohamed", gender: 'f', email: 'student21@academy.com', batch_id: 4, student_class_id: 3)
# Student.create(admission_date: "2013-10-15", first_name: "Randa", middle_name: "", last_name: "Hosny", gender: 'f', email: 'student22@academy.com', batch_id: 4, student_class_id: 3)
# #class 4
# Student.create(admission_date: "2013-10-15", first_name: "Saleh", middle_name: "", last_name: "Abd Elaziz", gender: 'm', email: 'student23@academy.com', batch_id: 4, student_class_id: 4)
# Student.create(admission_date: "2013-10-15", first_name: "Doha", middle_name: "", last_name: "Qotb", gender: 'f', email: 'student24@academy.com', batch_id: 4, student_class_id: 4)
# #class 5
# Student.create(admission_date: "2013-10-15", first_name: "Amr", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student25@academy.com', batch_id: 4, student_class_id: 5)
# Student.create(admission_date: "2013-10-15", first_name: "Mohamed", middle_name: "", last_name: "Abd Elhamid", gender: 'm', email: 'student26@academy.com', batch_id: 4, student_class_id: 5)
# #class 6
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student27@academy.com', batch_id: 4, student_class_id: 6)
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student28@academy.com', batch_id: 4, student_class_id: 6)
# #class 7
# Student.create(admission_date: "2013-10-20", first_name: "Mahmoud", middle_name: "", last_name: "Sobhy", gender: 'm', email: 'student29@academy.com', batch_id: 4, student_class_id: 7)
# Student.create(admission_date: "2013-10-22", first_name: "Marwan", middle_name: "", last_name: "Abd Elhafez", gender: 'm', email: 'student30@academy.com', batch_id: 4, student_class_id: 7)
# #class 8
# Student.create(admission_date: "2013-10-22", first_name: "Nariman", middle_name: "", last_name: "Salem", gender: 'f', email: 'student31@academy.com', batch_id: 4, student_class_id: 8)
# Student.create(admission_date: "2013-10-22", first_name: "Hesham", middle_name: "", last_name: "Hassan", gender: 'm', email: 'student32@academy.com', batch_id: 4, student_class_id: 8)



# Student.create(admission_date: "2013-10-15", first_name: "Fawzy" , middle_name: "", last_name: "Kamal", gender: 'm', email: 'student33@academy.com',batch_id: 4, student_class_id: 9)
# Student.create(admission_date: "2013-10-15", first_name: "Hamdy", middle_name: "", last_name: "Mostafa", gender: 'm', email: 'student34@academy.com', batch_id: 4, student_class_id: 9)
# #class 2
# Student.create(admission_date: "2013-10-15", first_name: "Ahmed", middle_name: "", last_name: "Abd Elghafar", gender: 'm', email: 'student35@academy.com', batch_id: 4, student_class_id: 10)
# Student.create(admission_date: "2013-10-15", first_name: "Ahmed", middle_name: "", last_name: "Hagag", gender: 'm', email: 'student36@academy.com', batch_id: 4, student_class_id: 10)
# #class 3
# Student.create(admission_date: "2013-10-15", first_name: "Gehad", middle_name: "", last_name: "Mohamed", gender: 'f', email: 'student37@academy.com', batch_id: 4, student_class_id: 11)
# Student.create(admission_date: "2013-10-15", first_name: "Randa", middle_name: "", last_name: "Hosny", gender: 'f', email: 'student38@academy.com', batch_id: 4, student_class_id: 11)
# #class 4
# Student.create(admission_date: "2013-10-15", first_name: "Saleh", middle_name: "", last_name: "Abd Elaziz", gender: 'm', email: 'student38@academy.com', batch_id: 4, student_class_id: 12)
# Student.create(admission_date: "2013-10-15", first_name: "Doha", middle_name: "", last_name: "Qotb", gender: 'f', email: 'student39@academy.com', batch_id: 4, student_class_id: 12)
# #class 5
# Student.create(admission_date: "2013-10-15", first_name: "Amr", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student40@academy.com', batch_id: 4, student_class_id: 5)
# Student.create(admission_date: "2013-10-15", first_name: "Mohamed", middle_name: "", last_name: "Abd Elhamid", gender: 'm', email: 'student41@academy.com', batch_id: 4, student_class_id: 5)
# #class 6
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student42@academy.com', batch_id: 4, student_class_id: 6)
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student43@academy.com', batch_id: 4, student_class_id: 6)
# #class 7
# Student.create(admission_date: "2013-10-20", first_name: "Mahmoud", middle_name: "", last_name: "Sobhy", gender: 'm', email: 'student44@academy.com', batch_id: 4, student_class_id: 7)
# Student.create(admission_date: "2013-10-22", first_name: "Marwan", middle_name: "", last_name: "Abd Elhafez", gender: 'm', email: 'student45@academy.com', batch_id: 4, student_class_id: 7)
# #class 8
# Student.create(admission_date: "2013-10-22", first_name: "Nariman", middle_name: "", last_name: "Salem", gender: 'f', email: 'student46@academy.com', batch_id: 4, student_class_id: 8)
# Student.create(admission_date: "2013-10-22", first_name: "Hesham", middle_name: "", last_name: "Hassan", gender: 'm', email: 'student47@academy.com', batch_id: 4, student_class_id: 8)


# Student.create(admission_date: "2013-10-15", first_name: "Doha", middle_name: "", last_name: "Qotb", gender: 'f', email: 'student48@academy.com', batch_id: 5, student_class_id: 12)
# #class 5
# Student.create(admission_date: "2013-10-15", first_name: "Amr", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student49@academy.com', batch_id: 5, student_class_id: 5)
# Student.create(admission_date: "2013-10-15", first_name: "Mohamed", middle_name: "", last_name: "Abd Elhamid", gender: 'm', email: 'student50@academy.com', batch_id: 5, student_class_id: 5)
# #class 6
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student51@academy.com', batch_id: 5, student_class_id: 6)
# Student.create(admission_date: "2013-10-20", first_name: "Mohamed", middle_name: "", last_name: "Mohamed", gender: 'm', email: 'student52@academy.com', batch_id: 5, student_class_id: 6)
# #class 7
# Student.create(admission_date: "2013-10-20", first_name: "Mahmoud", middle_name: "", last_name: "Sobhy", gender: 'm', email: 'student53@academy.com', batch_id: 5, student_class_id: 7)
# Student.create(admission_date: "2013-10-22", first_name: "Marwan", middle_name: "", last_name: "Abd Elhafez", gender: 'm', email: 'student54@academy.com', batch_id: 5, student_class_id: 7)
# #class 8
# Student.create(admission_date: "2013-10-22", first_name: "Nariman", middle_name: "", last_name: "Salem", gender: 'f', email: 'student55@academy.com', batch_id: 5, student_class_id: 8)
# Student.create(admission_date: "2013-10-22", first_name: "Hesham", middle_name: "", last_name: "Hassan", gender: 'm', email: 'student56@academy.com', batch_id: 5, student_class_id: 8)
# 1 bussiness arabic
#
# #===========================================================================================
# #2 business english
# #class 1
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 2
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 3
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 4
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 5
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 6
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #=============================================================================================
# #2 business arabic
# #class 1
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 2
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 3
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 4
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 5
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #class 6
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# Student.create(first_name: "", middle_name: "", last_name: "", batch_id: , student_class_id: )
# #=============================================================================================



# ###################################################################################################

# #Courses
# # Management Information System
Course.create(course_code: "IS101", course_name: "Office Application Packages",course_department: "Management Information System",
			 course_batch: "1MIS", course_semester: "second semester")

Course.create(course_code: "IS201", course_name: "Management Information Systems",course_department: "Management Information System",
			 course_batch: "2MIS", course_semester: "second semester")

Course.create(course_code: "IS202", course_name: "Internet and Mutimedia Applictions",course_department: "Management Information System",
			 course_batch: "2MIS", course_semester: "second semester")

Course.create(course_code: "IS203", course_name: "Introduction to  Information Systems",course_department: "Management Information System",
			 course_batch: "2C", course_semester: "first semester")

Course.create(course_code: "IS301", course_name: "Information Systems Analysis & Design",course_department: "Management Information System",
			 course_batch: "3MIS", course_semester: "second semester")

Course.create(course_code: "IS312", course_name: "Marketing and Electronic Commerce",course_department: "Management Information System",
			 course_batch: "3MIS", course_semester: "second semester")

Course.create(course_code: "IS401", course_name: "Decision Support Systems",course_department: "Management Information System",
			 course_batch: "4MIS", course_semester: "first semester")

Course.create(course_code: "IS403", course_name: "Comp.Application For Reports Prep.",course_department: "Management Information System",
			 course_batch: "4MIS", course_semester: "second semester")

Course.create(course_code: "IS404", course_name: "Accounting Informormation Systems",course_department: "Management Information System",
			 course_batch: "4MIS", course_semester: "second semester")

Course.create(course_code: "IS405", course_name: "Graduation Project",course_department: "Management Information System",
			 course_batch: "4MIS", course_semester: "first semester")

Course.create(course_code: "IS405", course_name: "Graduation Project",course_department: "Management Information System",
			 course_batch: "4MIS", course_semester: "second semester")

Course.create(course_code: "IS408", course_name: "Information Systems Technology",course_department: "Management Information System",
			 course_batch: "4AC", course_semester: "first semester")

Course.create(course_code: "IS409", course_name: "Decision Support Systems",course_department: "Management Information System",
			 course_batch: "4AC", course_semester: "second semester")
# ##################################################################################################


# ####Country / Nationality name
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

# ###################################################################################################

# # Help topic
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
