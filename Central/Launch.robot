*** Settings ***
Documentation  Knock POC

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/Trade.robot


Library  AppiumLibrary
Test Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=iOS
             ...  platformVersion=11.0
             ...  deviceName=My Device
             ...  browserName=Safari
Test Teardown  Close Application


#Test Setup  Begin Web Test
#Test Teardown  End Web Test


*** Variables ***

${BROWSER}   chrome
${REMOTE_URL}  http://localhost:4723/wd/hub




*** Test Cases ***
TradeIn
    Log To Console  Trade in Workflow
    Trade.TradeInWorkflow