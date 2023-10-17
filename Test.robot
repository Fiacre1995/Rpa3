*** Settings ***
Library     SeleniumLibrary
Documentation    Premiere page de robot framework

*** Variables ***

*** Test Cases ***
test case
    Ouvrir navigateur

*** Keywords ***
Ouvrir navigateur
    open browser    https://www.google.com/     firefox
    page should contain    Google
    sleep    5
    close browser