*** Settings ***
Library  SeleniumLibrary

Resource   ${EXECDIR}/Central/Common.robot
Resource   ${EXECDIR}/Central/Variables.robot

*** Variables ***



*** Keywords ***

TradeInWorkflow
    Navigate to Page
    Enter Invalid Address  3691 Silver Brook Ln, Gainesville, GA
    Expand Notification  1455 Biscayne Boulevard, Miami, FL
    Enter Valid Address  3692 Silver Brook Ln, Gainesville, GA
    Basic Facts  1996  1500
    Does Home Have Any
    Updates  This is my description
    Need Repairs
    Age of Roof
    Age of Water Heater
    Age of HVAC
    Kitchen Appliances
    Ceilings
    Mail Level Floors
    Buy/Sell
    Home Worth  350000
    Currently on the Market  This is my Situation
    Looking to buy
    Have you Found
    Working with another Agent?
    How did you hear
    Enter Name   Tom  Jones
    Enter Your Email  tester@test.com
    Enter Mobile Number  2122222222


Navigate to Page
    [Tags]  Go to Knock url
    Log To Console  Navigating to Knock.com
    go to   ${KnockURL}
    Delete All Cookies
    maximize browser window
    Capture Page Screenshot


Enter Invalid Address
    [Tags]  Enter Invalid Address
    [Arguments]  ${Invalid}
    ${InvalidAddress}=  Set Variable  ${Invalid}
    ${InValidSearchResult}=  Set Variable   //li[@class='_jx6g50i'][contains(.,'${InvalidAddress}')]
    Log To Console  Entering a Invalid Address
    Delete All Cookies
    Click Element  ${EnterAddress}
    Input Text  ${EnterAddress}  ${InvalidAddress}
    Wait Until Element is Visible  ${InValidSearchResult}  ${DefaultTimeout}
    Click Element  ${InValidSearchResult}
    Capture Page Screenshot
    Wait Until Element is Visible  ${AlreadySubmittedText}  20


Expand Notification
    [Tags]  Not Operating in your Area
    [Arguments]  ${NotAvailable}
    ${NotAvailableAddress}=  Set Variable  ${NotAvailable}
    ${NotAvailableSearch}=  Set Variable  //li[@class='_jx6g50i'][contains(.,'${NotAvailableAddress}')]
    Log To Console  Enter an Address thats not covered
    go to  ${KnockURL}
    Delete All Cookies
    sleep  2
    Click Element  ${EnterAddress}
    Input Text  ${EnterAddress}  ${NotAvailableAddress}
    Wait Until Element is Visible  ${NotAvailableSearch}  ${DefaultTimeout}
    Click Element  ${NotAvailableSearch}
    Capture Page Screenshot
    Wait Until Element is Visible  ${NotAvailableHeader}  20


Enter Valid Address
    [Tags]  Enter Valid Address
    [Arguments]  ${Valid}
    ${ValidAddress}=  Set Variable  ${Valid}
    ${ValidSearchResult}=  Set Variable  //li[@class='_jx6g50i'][contains(.,'${ValidAddress}')]
    Log To Console  Entering a Valid Address
    go to  ${KnockURL}
    Delete All Cookies
    sleep  2
    Click Element  ${EnterAddress}
    Click Button  ${GetTradeButton}
    Wait Until Element is Visible  ${EnterAddress}  ${DefaultTimeout}
    Click Element  ${EnterAddress}
    Input Text  ${EnterAddress}  ${ValidAddress}
    ${AddressIsFound}=  run keyword and return status  element should not be visible  ${CouldNotFindAddress}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible  ${ValidSearchResult}  ${DefaultTimeout}
    run keyword if  ${AddressIsFound}   Click Element  ${ValidSearchResult}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible  ${IsAddressCorrectCopy}  ${DefaultTimeout}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible   ${EmptyProgressBar}
    run keyword if  ${AddressIsFound}   Click Element  ${FixAddressButton}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible  ${AddressFixHeader}  ${DefaultTimeout}
    run keyword if  ${AddressIsFound}   Click Button  ${NextButton}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible  ${IsAddressCorrectCopy}  ${DefaultTimeout}
    run keyword if  ${AddressIsFound}   Click Button  ${CorrectButton}
    run keyword if  ${AddressIsFound}   Wait Until Element is Visible  ${LetsStartCopy}  ${DefaultTimeout}
    ${AddressNotFound}=  run keyword and return status  element should be visible  ${CouldNotFindAddress}
    run keyword if   ${AddressNotFound}  Click Element  ${AddressFormButton}
    run keyword if   ${AddressNotFound}  Click Element  ${Address1}
    run keyword if   ${AddressNotFound}  Input Text  ${Address1}   3692 Silver Brook Ln
    run keyword if   ${AddressNotFound}  Click Element  ${City}
    run keyword if   ${AddressNotFound}  Input Text  ${City}  Gainesville
    run keyword if   ${AddressNotFound}  Click Element  ${State}
    run keyword if   ${AddressNotFound}  click element   xpath=//option[contains(text(),'GA')]
    run keyword if   ${AddressNotFound}  Click Element  ${Zip}
    run keyword if   ${AddressNotFound}  Input Text  ${Zip}  30506
    run keyword if   ${AddressNotFound}  Click Button  ${NextButton}
    run keyword if   ${AddressNotFound}  Wait Until Element is Visible  ${IsAddressCorrectCopy}  ${DefaultTimeout}
    run keyword if   ${AddressNotFound}  Click Button  ${CorrectButton}
    run keyword if   ${AddressNotFound}  Wait Until Element is Visible  ${LetsStartCopy}  ${DefaultTimeout}


Basic Facts
    [Tags]  Basic Facts
    [Arguments]  ${Year}  ${SqFoot}
    ${YearB}=  Set Variable  ${Year}
    ${SqFootage}=  Set Variable  ${SqFoot}
    Log To Console  Selecting Basic Facts
    Element Should Be Visible  ${8%Progress}
    Click Button  ${AddBedrooms}
    Click Button  ${AddFullBathrooms}
    Click Button  ${AddHalfBathrooms}
    Click Element  ${YearBuild}
    Input Text  ${YearBuild}  ${YearB}
    Click Element  ${SqFt}
    Input Text  ${SqFt}  ${YearB}
    Click Element  ${HomeType}
    Wait Until Element is Visible  ${HomeTypeSingleFam}  ${DefaultTimeout}
    Sleep  1
    Click Element  ${HomeTypeSingleFam}
    Wait Until Element is Visible  ${NextButton}  ${DefaultTimeout}
    Click Button  ${NextButton}


Does Home Have Any
    [Tags]  Does Home Have Any Upgrades
    Log To Console  Selecting Upgrade Options
    Wait Until Element is Visible  ${DoesYourHomeCopy}  ${DefaultTimeout}
    ${NewDoesHomeButtonCount}=  Get Element Count  ${GeneralButton}
    Should Be Equal As Numbers  ${NewDoesHomeButtonCount}  ${DoesHomeButtonCount}
    Element Should Be Visible  ${12%Progress}
    Click Button  ${PoolButton}
    Click Button  ${GarageButton}
    Click Button  ${BasementButton}
    Click Button  ${WaterDamageButton}
    Click Button  ${PetIssues}
    Click Button  ${PlumbingIssues}
    Click Button  ${DrainageProblem}
    Click Button  ${FondationIssues}
    Click Button  ${Addition}
    Click Button  ${NextButton}
    Wait Until Element is Visible   ${BasementTypeHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${16%Progress}
    Click Button  ${FullyFinishedButton}
    Wait Until Element is Visible  ${AdditionTypeHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${20%Progress}
    Click Button  ${PermittedAdditionButton}
    Click Button  ${NextButton}


Updates
    [Tags]  Does Home Have Any Updates
    [Arguments]  ${DescribeUpdate}
    ${Description}=  Set Variable  ${DescribeUpdate}
    ${NewUpdatesButtonCount}=  Get Element Count  ${GeneralButton}
    Log To Console  Selecting Update Options
    Wait Until Element is Visible  ${UpdatesCopy}  ${DefaultTimeout}
    Element Should Be Visible  ${24%Progress}
    Should Be Equal As Numbers  ${NewUpdatesButtonCount}  ${UpdatesButtonCount}
    Click Button   ${NextButton}
    Wait Until Element is Visible  ${PleaseChooseOneValidationError}  ${DefaultTimeout}
    Click Button  ${KitchenCabinets}
    Click Button  ${KitchenFloor}
    Click Button  ${Flooring}
    Click Button  ${MasterBedroom}
    Click Button  ${Bathrooms}
    Click Button  ${BackyardDeck}
    Click Button  ${InterionPaint}
    Click Button  ${CounterTops}
    Click Button  ${NextButton}
    Wait Until Element is Visible  ${DescribeUpdatesCopy}  ${DefaultTimeout}
    Click Element  ${DescribeUpdatesCopy}
    Sleep  1
    Input Text  ${DescribeUpdatesCopy}  ${Description}
    Click Button  ${NextButton}


Need Repairs
    [Tags]  Any Repairs or Improvements
    Log To Console  Repairs or Improvements Selection
    Wait Until Element is Visible  ${ImprovementsNeededHeader}  ${DefaultTimeout}
    Sleep  1
    Element Should Be Visible  ${28%Progress}
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${AgeOfRoofHeader}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${ImprovementsNeededHeader}  ${DefaultTimeout}
    Click Button  ${YesButton}
    Capture Page Screenshot
    Click Button  ${NoButton}


Age of Roof
    [Tags]  Roof Age
    Log To Console  How old is your roof
    Wait Until Element is Visible  ${AgeOfRoofHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${32%Progress}
    Click Button  ${LessThanFiveBTN}
    Wait Until Element is Visible  ${HotWaterHeaterHeader}  ${DefaultTimeout}


Age of Water Heater
    [Tags]  Water Heater Age
    Log To Console  How old is you Water Heater
    Wait Until Element is Visible  ${HotWaterHeaterHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${36%Progress}
    Click Button  ${FiveNineBTN}
    Wait Until Element is Visible  ${HVACHeader}  ${DefaultTimeout}


Age of HVAC
    [Tags]  HVAC age
    Log To Console  How old is your HVAC system
    Wait Until Element is Visible  ${HVACHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${40%Progress}
    Click Button  ${TenMoreBTN}
    Wait Until Element is Visible  ${KitchenApplianceHeader}  ${DefaultTimeout}


Kitchen Appliances
    [Tags]  Describe Kitchen Appliances
    Log To Console  What kind of Kitchen Appliances
    Wait Until Element is Visible  ${KitchenApplianceHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${44%Progress}
    Click Button  ${StainlessSteel}
    Wait Until Element is Visible  ${CeilingsHeader}  ${DefaultTimeout}


Ceilings
    [Tags]  Describe Ceilings
    Log To Console  What type of Ceilings
    Wait Until Element is Visible  ${CeilingsHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${48%Progress}
    Click Button  ${PopcornCeilingButton}
    Wait Until Element is Visible  ${FlooringHeader}  ${DefaultTimeout}


Mail Level Floors
    [Tags]  Describe Floors
    Log To Console  What type of Floors
    Wait Until Element is Visible  ${FlooringHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${52%Progress}
    ${NewMLFoorsButtonCount}=  Get Element Count  ${GeneralButton}
    Should Be Equal As Numbers  ${NewMLFoorsButtonCount}  ${MLFoorsButtonCount}
    Click Button  ${HardWoodBtn}
    Click Button  ${TileBtn}
    Click Button  ${LaminatedBtn}
    Click Button  ${CarpetBtn}
    Click Button  ${OtherBth}
    Click Button  ${NextButton}
    Wait Until Element is Visible   ${LookingToSellTimeHeader}  ${DefaultTimeout}


Buy/Sell
    [Tags]  Buying or Selling
    Log To Console  Are you Buying or Selling
    Wait Until Element is Visible  ${LookingToSellTimeHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${56%Progress}
    Click Button  ${ASAPBtn}
    Wait Until Element is Visible  ${HomeWorthHeader}   ${DefaultTimeout}


Home Worth
    [Tags]  Home Worth
    [Arguments]  ${Worth}
    ${HomeWorth}=  Set Variable  ${Worth}
    Log To Console   What is your home worth
    Wait Until Element is Visible  ${HomeWorthHeader}   ${DefaultTimeout}
    Element Should Be Visible  ${60%Progress}
    Click Element  ${HomeWorthText}
    Input Text  ${HomeWorthText}  ${HomeWorth}
    Click Button  ${NextButton}
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  ${DefaultTimeout}


Currently on the Market
    [Tags]  Home on the Market
    [Arguments]  ${Situation}
    ${MSituation}=  Set Variable  ${Situation}
    Log To Console  Is you home currently on the market
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${64%Progress}
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${AgentYesValidationText}   ${DefaultTimeout}
    Click Element  ${SituationTextField}
    Input Text  ${SituationTextField}  ${MSituation}
    Wait Until Element is Visible  ${NextButton}  ${DefaultTimeout}
    Click Button  ${NextButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${AgentYesValidationText}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  ${DefaultTimeout}
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  ${DefaultTimeout}


Looking to buy
    [Tags]  Are you looking to buy a home
    Log To Console  Are you looking to buy a home
    Wait Until Element is Visible  ${LookingToBuyHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${72%Progress}
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  ${DefaultTimeout}
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${HaveYouFoundHeader}  ${DefaultTimeout}


Have you Found
    [Tags]  Have you found your House
    Log To Console  Have you found a new house
    Wait Until Element is Visible  ${HaveYouFoundHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${76%Progress}
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${HaveYouFoundHeader}  ${DefaultTimeout}
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Click Button  ${YesButton}


Working with another Agent?
    [Tags]  Working with another Agent Question
    Log To Console  Are you working with another Agent
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  ${DefaultTimeout}
    Element Should Be Visible  ${80%Progress}
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  ${DefaultTimeout}
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  ${DefaultTimeout}
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  ${DefaultTimeout}


How did you hear
    [Tags]  How did you hear
    Log To Console  How did you hear about Knock
    Wait Until Element is Visible  ${HowDidYouHearHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${84%Progress}
    Click Button   ${TVSegmentBtn}
    Wait Until Element is Visible  ${EnterNameHeader}  ${DefaultTimeout}


Enter Name
    [Tags]  Enter a Name
    [Arguments]  ${First}  ${Last}
    ${FirstName}=  Set Variable  ${First}
    ${LastName}=  Set Variable   ${Last}
    Log To Console  First and Last Name Entry
    Wait Until Element is Visible  ${EnterNameHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${92%Progress}
    Click Element  ${FirstNameField}
    Input Text  ${FirstNameField}  ${FirstName}
    Click Element  ${LastNameField}
    Input Text  ${LastNameField}  ${LastName}
    Click Button  ${NextButton}
    Wait Until Element is Visible  ${EstimateHeader}  ${DefaultTimeout}


Enter Your Email
    [Tags]  Email Entry
    [Arguments]  ${Email}
    ${EmailAddress}=  Set Variable  ${Email}
    Log To Console  Enter an Email Address
    Wait Until Element is Visible  ${EstimateHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${96%Progress}
    Click Element  ${EmailTextField}
    Input Text  ${EmailTextField}  ${EmailAddress}
    Click Button  ${NextButton}


Enter Mobile Number
    [Tags]  Mobile Number Entry
    [Arguments]  ${Mobile}
    ${MobileNumber}=  Set Variable  ${Mobile}
    Log To Console  Enter a Mobile Number
    Wait Until Element is Visible  ${MobileNumberHeader}  ${DefaultTimeout}
    Element Should Be Visible  ${100%Progress}
    Click Element  ${PhoneNumberField}
    Input Text  ${PhoneNumberField}  ${MobileNumber}
    Wait Until Element is Visible  ${SubmitBtn}













