# login sql
#
def login_user(): 
	if user_login.value == " ":
		info("Error", "You must enter a valid username")
	elif PW_textbox.value == " ":
		info("Error", "You must enter a password")
	else:
		user = user_login.value
		sqlselect = "SELECT * FROM Customer_Table WHERE UserName = '"+user+"'"
		rows = query_database(database_file, sqlselect)
		if len(rows) == 0: ### This checks that the user was found ###
				info("Error","Not Found")
		else:
			info("Log in","User Found")
