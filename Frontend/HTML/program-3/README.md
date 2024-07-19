# Login and Registration HTML Pages

This repository contains two HTML files: `loginPage.html` and `registrationPage.html`, which implement basic functionality for a login and registration system.

## Files 

### 1. Login Page (`loginPage.html`)

- **Structure and Tags Used:**
  - `<!DOCTYPE html>`: Specifies the document type and version.
    - `<title>`: Title of the page displayed on the browser tab.
  - `<body>`: Contains the main content of the page.
    - `<h1>`: Main heading "Login Page".
    - `<form>`: Form element to collect user input.
      - `<label>`: Labels for input fields.
      - `<input>`: Input fields for username and password (`type="text"` and `type="password"`).
      - `<input type="submit">`: Submit button to send login credentials.
    - `<a href="./registrationPage.html">Register ?</a>`: Link to navigate to the registration page.

### 2. Registration Page (`registrationPage.html`)


- **Structure and Tags Used:**
  - Similar structure to the login page with additional form elements:
    - `<input type="email">`: Email input field.
    - `<input type="date">`: Date of birth input field.
    - `<select>`: Dropdown menu to select country.
    - `<input type="radio">`: Radio buttons for gender selection.
    - `<input type="submit">`: Submit button to register.
    - `<a href="./loginPage.html">Already Registered ?</a>`: Link to navigate to the login page.

- Both pages use basic HTML tags (`<html>`, `<head>`, `<title>`, `<meta>`, `<body>`, `<h1>`, `<form>`, `<label>`, `<input>`, `<a>`, `<select>`, `<option>`, `<br>`) for content and structure.
- The registration page includes form validation attributes (`required`) to ensure required fields are filled out.
- These pages serve as a simple demonstration of frontend HTML forms for user authentication and registration.

