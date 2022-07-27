*** Settings ***

Documentation   A resource file with reusable keywords and variables
...             The system specific keywords created here from our own
...             domain specific language. They utilize keywords provided
...             by the imported SeleniumLibrary
Library         SeleniumLibrary
Library         Collections
Resource        resource.robot
Test Setup      Hit the Practice URL
Test Teardown   Close Browser

*** Variables ***

# Just some new comment

*** Test Cases ***

#Validate the Text of the Page
 #   Title of the page

Validate card titles on the page
    @{expected_list}=   Create List  iphone X    Samsung Note 8  Nokia Edge  Blackberry
    @{elements}=        Get WebElements    XPATH://h4[@class= 'card-title']
    @{actual_list}      Create List
    FOR    ${element}    IN    @{elements}
        Log    ${element.text}
        Append To List    ${actual_list}    ${element.text}

    END
    Lists Should Be Equal    ${expected_list}    ${actual_list}

*** Keywords ***

Title of the page
    Get Text    XPATH://a[@class= 'navbar-brand'][text()= 'ProtoCommerce']


