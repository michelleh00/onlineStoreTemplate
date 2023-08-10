# Testing Review

## Tests Reviewed

- **Test Source File:** 
  - **Test Function Name:** test_register_with_invalid_username
    - **Date Reviewed:** 08/07/2023
    - **Comments:**
      - Tests if a user is able to register with an invalid username (one containing special characters). When attempting to register with an invalid username, ex: 'user#$%', the user is routed to invalid_username.html and a message is displayed that states, 'Usernames may only contain letters or numbers. Please try again'. A message is printed to the console that reads, 'Error: Invalid username- User attempted to register a username containing special characters'. This functionality was implemented in register() in app.py along with valid_username(username). It was confirmed that after a failed registration attempt the user was not added to store_records.dbI thought I would need to find a way to automate this process, but was told in office hours that a manual test (attempting to register on the site with an invalid username) is fine because manual testing is a form of testing. 

- **Test Source File:** 
  - **Test Function Name:** test_register_with_invalid_email
    - **Date Reviewed:** 08/09/2023
    - **Comments:**
      - Tests if a user is able to register with an email that is already associated with another account. When attempting to register an account with an email that is already in the database, the user is routed to email_already_in_use.html, and an error message is displayed that states, 'The email you've attempted to register is already associated with an account. Please try again'. A message is printed to the console that reads, "Error: Invalid email- User attempted to register an email that is already associated with an account". This functionality was implemented in register() in app.py along with email_already_in_use(email: str). It was confirmed that after a failed registration attempt the user was not added to  store_records.db. As with the previous listing, this function was tested manually. 

- **Test Source File:** 
  - **Test Function Name:**  test_register_with_existing_username
    - **Date Reviewed:** 08/06/2023
    - **Comments:**
      - Tests if a user is able to register with an existing username. Upon attempting to register an account with an existing username, an error page is displayed and "sqlite3.IntegrityError: UNIQUE constraint failed: users.username" is printed to the console. Testing code was not added as this appears to have been already implemented.

- **Test Source File:** 
  - **Test Function Name:** test_nav_bar
    - **Date Reviewed:** 08/06/2023
    - **Comments:**
      - Tests if the implemented navigation bar routes correctly. I think we could use Selenium for this, but that may be out of scope for this project. Instead, I manually tested the nav bar. I know that isn't what's being asked of us, but I don't know what else to do at this point. Upon clicking each link in the nav bar (Home, Register, Login, Search Bar), users are routed to the appropriate page. -Groupmates: If you have a solution feel free to post it and delete this