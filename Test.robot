*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library    AutoRecorder0

Documentation    Premiere page de robot framework

*** Variables ***

*** Test Cases ***
test case
    Ouvrir navigateur
    Connexion
    Capture d'ecran
*** Keywords ***
Ouvrir navigateur
    open browser    https://www.google.com/     firefox
    page should contain    Ggle
    maximize browser window
    input text    //*[@id="APjFqb"]     orangehrm testing
    Mouse Down    class=CcAdNb
    Mouse Up    class=CcAdNb
    Click Button    name=btnK
    Sleep    5
    click element    xpath=//*[@id="rso"]/div[1]/div/div/div[1]/div/div/span/a/h3

Connexion
    sleep    5
    page should contain    Login
    input text    name=username     Admin
    input text    name=password     admin123
    sleep    2
    click button    class=oxd-button
Capture d'ecran
    sleep    3
    set screenshot directory    ./Resultats
    take screenshot    image