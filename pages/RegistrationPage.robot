*** Keywords ***
Open Registration Page
    [Documentation]    Navigate to the registration page by clicking the "สมัครสมาชิก" link on the homepage
    Open Browser    ${baseUrl}    ${browser}  # เปิดเบราว์เซอร์และไปที่ localhost:3000
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@class='register']       20s  # รอให้ลิงก์ "สมัครสมาชิก" ปรากฏ
    Click Link    xpath=//a[@class='register']  # คลิกที่ลิงก์ "สมัครสมาชิก"


Fill Registration Form
    [Arguments]  ${username}  ${firstName}    ${lastName}    ${email}    ${password}
    [Documentation]    Fill out the registration form with first name, last name, email, and password
    
    Wait Until Element Is Visible    xpath=//input[@name='username']       20s
    Input Text    xpath=//input[@name='username']    ${username}

    Wait Until Element Is Visible    xpath=//input[@name='firstName']      20s
    Input Text    xpath=//input[@name='firstName']    ${firstName}

    Wait Until Element Is Visible    xpath=//input[@name='lastName']       20s
    Input Text    xpath=//input[@name='lastName']    ${lastName}

    Wait Until Element Is Visible    xpath=//input[@name='email']       20s
    Input Text    xpath=//input[@name='email']    ${email}

    Wait Until Element Is Visible    xpath=//input[@name='password']      20s
    Input Text    xpath=//input[@name='password']    ${password}

    Wait Until Element Is Visible    xpath=//input[@id='acceptTerms']      20s
    Click Element    xpath=//input[@id='acceptTerms']

    Capture Page Screenshot
    sleep        5s
    Wait Until Element Is Visible    xpath=//button[@type='submit' and text()='สมัครสมาชิก']      20s
    Click Button    xpath=//button[@type='submit' and text()='สมัครสมาชิก']
