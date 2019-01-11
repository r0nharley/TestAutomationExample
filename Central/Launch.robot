*** Settings ***
Documentation  Knock POC

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/Trade.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

${BROWSER}   headlesschrome




*** Test Cases ***
TradeIn
    Log To Console  Trade in Workflow
    Trade.TradeInWorkflow