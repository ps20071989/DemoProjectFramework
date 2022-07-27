*** Settings ***

Documentation   A resource file with reusable keywords and variables
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the imported SeleniumLibrary
Library         SeleniumLibrary

*** Variables ***

${url}          https://rahulshettyacademy.com/angularpractice/


*** Keywords ***

Hit the Practice URL
    Create Webdriver            Chrome  executable_path=C:\\Users\\pranjalsood\\OneDrive - Nagarro\\Desktop\\Automation\\chromedriver_win32\\chromedriver.exe
    Maximize Browser Window
    Go To                       ${url}
    Click Element    XPATH://a[@href= '/angularpractice/shop']

