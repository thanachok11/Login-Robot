*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot
Resource    ../pages/RegistrationPage.robot
Variables   ../resources/config.yaml
Variables   ../resources/testdata.yaml


*** Test Cases ***
Register a New User
    [Documentation]    Register a new user with all required fields
    Open Registration Page
    Fill Registration Form      ${username}  ${firstName}    ${lastName}    ${email}    ${password}
    Open Login Page
    Fill Login Form         ${email}    ${password}
    [Teardown]    Close Browser

