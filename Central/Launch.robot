*** Settings ***
Documentation  Knock POC

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/Trade.robot
Resource   ${EXECDIR}/Central/Variables.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

${BROWSER}   firefox





*** Test Cases ***

Navigate to Page
    Log To Console  Navigating to Knock.com
    Trade.Navigate to Page

Enter Invalid Address
    Log To Console  Entering a Invalid Address
    Trade.Navigate to Page
    Trade.Enter Invalid Address  3691 Silver Brook Ln, Gainesville, GA


Expand Notification
    Log To Console  Enter an Address thats not covered
    Trade.Expand Notification  1455 Biscayne Boulevard, Miami, FL

Enter Valid Address
    Log To Console  Entering a Valid Address
    Trade.Enter Valid Address  3692 Silver Brook Ln, Gainesville, GA

Fill In Trade-in Form
    Trade.Navigate to Page
    Trade.Enter Valid Address  3692 Silver Brook Ln, Gainesville, GA
    Trade.Basic Facts  1996  1500
    Trade.Does Home Have Any
    Trade.Updates  This is my description
    Trade.Need Repairs
    Trade.Age of Roof
    Trade.Age of Water Heater
    Trade.Age of HVAC
    Trade.Kitchen Appliances
    Trade.Ceilings
    Trade.Mail Level Floors
    Trade.Buy/Sell
    Trade.Home Worth  350000
    Trade.Currently on the Market  This is my Situation
    Trade.Looking to buy
    Trade.Have you Found
    Trade.Working with another Agent?
    Trade.How did you hear
    Trade.Enter Name  Tom  Jones
    Trade.Enter Your Email  tester@test.com
    Trade.Enter Mobile Number  2122222222



