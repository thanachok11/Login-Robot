*** Keywords ***
Open Login Page 
        [Documentation]    Navigate to the registration page by clicking the "สมัครสมาชิก" link on the homepage
    Open Browser    ${baseUrl}    ${browser}  # เปิดเบราว์เซอร์และไปที่ localhost:3000
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@class='login']       20s  # รอให้ลิงก์ "เข้าสู่ระบบ" ปรากฏ
    Click Link    xpath=//a[@class='login']  # คลิกที่ลิงก์ "เข้าสู่ระบบ"

Fill Login Form
    [Arguments]  ${email}  ${password}
    [Documentation]    Log in with the given email and password
    
    Wait Until Element Is Visible    xpath=//input[@name='email' and @type='email']    20s
    Input Text    xpath=//input[@name='email' and @type='email']    ${email}

    Wait Until Element Is Visible    xpath=//input[@name='password' and @type='password']    20s
    Input Text    xpath=//input[@name='password' and @type='password']    ${password}

    sleep         2s
    Wait Until Element Is Visible    xpath=//button[@type='submit']    10s
    Click Button    xpath=//button[@type='submit']
    
    Capture Page Screenshot
    Sleep        10s
    Capture Page Screenshot
    # คลิกปุ่มออกจากระบบ
    Click Element    xpath=//button[contains(@class,'Navbar_logoutButton__LkheW')]
    