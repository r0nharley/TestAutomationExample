*** Settings ***
Library  SeleniumLibrary

Resource   ${EXECDIR}/Central/Common.robot

*** Variables ***

${KnockURL}      https://www.knock.com/
${EnterAddress}  //input[@placeholder='Enter your home address']
${GetTradeButton}  //button[@class='_13u5ve25']
${AddressVerification}  //div[@class='_11q3op'][contains(.,'Address Verification')]
${AlreadySubmittedText}  //div[@class='_1gfpcfs'][contains(.,'This home has already been submitted for a Knock Offer.')]
${CorrectButton}  //button[@type='button'][contains(.,'Correct')]
${LetsStartCopy}  //div[@class='_jy6h7s'][contains(.,'Let’s start by verifying some basic facts about your home.')]
${AddBedrooms}  (//button[contains(@class,'_133gcyr1')])[1]
${AddFullBathrooms}  (//button[contains(@class,'_133gcyr1')])[2]
${AddHalfBathrooms}  (//button[contains(@class,'_133gcyr1')])[3]
${YearBuild}    (//input[contains(@type,'tel')])[1]
${SqFt}         (//input[contains(@type,'tel')])[2]
${HomeType}     //div[contains(@class,'_t2qorhv')]
${HomeTypeValue}  //input[contains(@value,'1')]
${HomeTypeSingleFam}  (//div[contains(.,'Single Family')])[10]
${NextButton}  //button[@type='button'][contains(.,'Next')]
${BackButton}   //button[@type='button'][contains(.,'Back')]
${DoesYourHomeCopy}  //div[@class='_jy6h7s'][contains(.,'Does your home have any of the following? (choose all that apply)')]
${PoolButton}  //button[@type='button'][contains(.,'Pool')]
${GarageButton}  //button[@type='button'][contains(.,'Garage')]
${BasementButton}  //button[@type='button'][contains(.,'Basement')]
${WaterDamageButton}  //button[@type='button'][contains(.,'Water Damage')]
${PetIssues}  //button[@type='button'][contains(.,'Pest Issues')]
${PlumbingIssues}  //button[@type='button'][contains(.,'Plumbing Issues')]
${DrainageProblem}  //button[@type='button'][contains(.,'Drainage Problem')]
${FondationIssues}  //button[@type='button'][contains(.,'Foundation Issues')]
${Addition}  //button[@type='button'][contains(.,'Addition')]
${UpdatesCopy}  //div[@class='_jy6h7s'][contains(.,'Have you updated any of the following in the past 5 years?')]
${KitchenCabinets}  //button[@type='button'][contains(.,'Kitchen Cabinets')]
${KitchenFloor}     //button[@type='button'][contains(.,'Kitchen Floor')]
${Flooring}         //button[@type='button'][contains(.,'Flooring')]
${MasterBedroom}    //button[@type='button'][contains(.,'Master Bedroom')]
${Bathrooms}        //button[@type='button'][contains(.,'Bathroom(s)')]
${BackyardDeck}     //button[@type='button'][contains(.,'Backyard/Deck')]
${InterionPaint}    //button[@type='button'][contains(.,'Interior Paint')]
${ExteriorPaint}    //button[@type='button'][contains(.,'Exterior Paint')]
${CounterTops}      //button[@type='button'][contains(.,'Countertops')]
${PleaseChooseOneValidationError}  //div[@class='_10vebdl'][contains(.,'Please choose at least one option or select "None of the above".')]
${DescribeUpdatesCopy}  //textarea[contains(@placeholder,'Please describe the updates and when they were made.')]
${ImprovementsNeededHeader}  //div[@class='_1fgvx67'][contains(.,'that need to be made to your home?')]
${NoButton}  //button[@type='button'][contains(.,'No')]
${YesButton}  //button[@type='button'][contains(.,'Yes')]
${RepairRequiredText}  //textarea[contains(@placeholder,'Please describe what's needed.')]
${AgeOfRoofHeader}  //div[@class='_jy6h7s'][contains(.,'What is the age of your roof?')]
${LessThanFiveBTN}  //button[@type='button'][contains(.,'Less Than 5 Years')]
${FiveNineBTN}  //button[@type='button'][contains(.,'5-9 Years')]
${TenMoreBTN}   //button[@type='button'][contains(.,'10+ Years')]
${HotWaterHeaterHeader}  //div[@class='_jy6h7s'][contains(.,'What is the age of your hot water heater?')]
${HVACHeader}  //div[@class='_jy6h7s'][contains(.,'What is the age of your HVAC system(s)?')]
${KitchenApplianceHeader}  //div[@class='_jy6h7s'][contains(.,'What type of kitchen appliances do you have?')]
${StainlessSteel}   //button[@type='button'][contains(.,'Stainless Steel')]
${CeilingsHeader}   //div[@class='_jy6h7s'][contains(.,'What type of ceilings do you have?')]
${PopcornCeilingButton}  //button[@type='button'][contains(.,'Popcorn')]
${FlooringHeader}  //div[@class='_jy6h7s'][contains(.,'What type of flooring do you have on the main level?')]
${HardWoodBtn}  //button[@type='button'][contains(.,'Hardwood')]
${TileBtn}   //button[@type='button'][contains(.,'Tile')]
${LaminatedBtn}   //button[@type='button'][contains(.,'Laminated')]
${CarpetBtn}   //button[@type='button'][contains(.,'Carpet')]
${OtherBth}   //button[@type='button'][contains(.,'Other')]
${RequiredValidationText}  //div[@class='_10vebdl'][contains(.,'Required')]
${LookingToSellTimeHeader}  //div[@class='_jy6h7s'][contains(.,'When are you looking to buy/sell?')]
${ASAPBtn}  //button[@type='button'][contains(.,'ASAP')]
${HomeWorthHeader}  //div[@class='_jy6h7s'][contains(.,'How much do you think your home is worth?')]
${HomeWorthText}  //input[contains(@type,'tel')]
${CurrentlyOnMarketHeader}  //div[@class='_jy6h7s'][contains(.,'Is your home currently on the market?')]
${AgentYesValidationText}   //div[@class='_20skg4'][contains(.,'Knock is not able to work with sellers that are currently represented by an agent. We are happy to discuss taking over the listing when it expires. If you can fill us in on your situation, we can decide the best course of action.')]
${LookingToBuyHeader}  //div[@class='_jy6h7s'][contains(.,'Are you currently looking to buy a home?')]
${HowDidYouHearHeader}  //div[@class='_jy6h7s'][contains(.,'How did you hear about Knock?')]
${SituationTextField}   //textarea[contains(@placeholder,'Tell us about your situation')]
${HaveYouFoundHeader}  //div[@class='_jy6h7s'][contains(.,'Have you found the home you want to buy?')]
${WorkingWithAnotherAgent}  //div[@class='_jy6h7s'][contains(.,'Are you working with another agent to buy your next home?')]
${HowDidYouHearHeader}  //div[@class='_jy6h7s'][contains(.,'How did you hear about Knock?')]
${TVSegmentBtn}  //button[@type='button'][contains(.,'TV Segment')]
${EnterNameHeader}  //div[@class='_jy6h7s'][contains(.,'Please enter your name')]
${FirstNameField}  //input[contains(@placeholder,'Your First Name')]
${LastNameField}    //input[contains(@placeholder,'Your Last Name')]
${EstimateHeader}  //div[@class='_jy6h7s'][contains(.,'Where should we send your Knock Price Estimate?')]
${EmailTextField}  //input[@type='email']
${MobileNumberHeader}  //div[@class='_jy6h7s'][contains(.,'Please enter your mobile number')]
${PhoneNumberField}  //input[@type='tel']
${SubmitBtn}  //button[@type='button'][contains(.,'Submit')]



*** Keywords ***

TradeInWorkflow
    #Navigate to Page
    #Enter Invalid Address
    Enter Valid Address
    Basic Facts
    Does Home Have Any
    Updates
    Need Repairs
    Age of Roof
    Age of Water Heater
    Age of HVAC
    Kitchen Appliances
    Ceilings
    Mail Level Floors
    Buy/Sell
    Home Worth
    Currently on the Market
    Looking to buy
    Have you Found
    Working with another Agent?
    How did you hear
    Enter Name
    Enter Your Email
    Enter Mobile Number


Navigate to Page
    [Tags]  Go to Knock url
    Log To Console  Navigating to Knock.com
    go to   ${KnockURL}
    Delete All Cookies
    maximize browser window
    Capture Page Screenshot

Enter Invalid Address
    [Tags]  Enter Invalid Address
    Log To Console  Entering a Invalid Address
    Click Element  ${EnterAddress}
    Input Text  ${EnterAddress}  3691 Silver Brook Ln Gainesville, GA
    Wait Until Element is Visible  //li[@class='_jx6g50i'][contains(.,'3691 Silver Brook Ln, Gainesville, GA')]  4
    Click Element  //li[@class='_jx6g50i'][contains(.,'3691 Silver Brook Ln, Gainesville, GA')]
    Capture Page Screenshot
    Wait Until Element is Visible  ${AlreadySubmittedText}  20


Enter Valid Address
    [Tags]  Enter Valid Address
    Log To Console  Entering a Valid Address
    go to   ${KnockURL}
    sleep  3
    Click Element  ${EnterAddress}
    Click Button   ${GetTradeButton}
    Wait Until Element is Visible  ${EnterAddress}  5
    Click Element  ${EnterAddress}
    Input Text  ${EnterAddress}  3692 Silver Brook Ln Gainesville, GA
    Wait Until Element is Visible  //li[@class='_jx6g50i'][contains(.,'3692 Silver Brook Ln, Gainesville, GA')]  4
    Click Element  //li[@class='_jx6g50i'][contains(.,'3692 Silver Brook Ln, Gainesville, GA')]
    Wait Until Element is Visible  //div[@class='_25tgwa'][contains(.,'Is this the correct address?')]  4
    Click Button   ${CorrectButton}
    Wait Until Element is Visible  ${LetsStartCopy}  5
    Capture Page Screenshot


Basic Facts
    [Tags]  Basic Facts
    Log To Console  Selecting Basic Facts
    Click Button  ${AddBedrooms}
    Click Button  ${AddFullBathrooms}
    Click Button  ${AddHalfBathrooms}
    Click Element  ${YearBuild}
    Input Text  ${YearBuild}  1996
    Click Element  ${SqFt}
    Input Text  ${SqFt}  1500
    Click Element  ${HomeType}
    Wait Until Element is Visible  ${HomeTypeSingleFam}  4
    Click Element  ${HomeTypeSingleFam}
    Wait Until Element is Visible  ${NextButton}  4
    Click Button  ${NextButton}


Does Home Have Any
    [Tags]  Does Home Have Any Upgrades
    Log To Console  Selecting Upgrade Options
    Wait Until Element is Visible  ${DoesYourHomeCopy}  4
    Click Button    ${PoolButton}
    Click Button    ${GarageButton}
    #Click Button    ${BasementButton}
    Click Button    ${WaterDamageButton}
    Click Button    ${PetIssues}
    Click Button    ${PlumbingIssues}
    Click Button    ${DrainageProblem}
    Click Button    ${FondationIssues}
    #Click Button    ${Addition}
    Click Button    ${NextButton}


Updates
    [Tags]  Does Home Have Any Updates
    Log To Console  Selecting Update Options
    Wait Until Element is Visible  ${UpdatesCopy}
    Click Button   ${NextButton}
    Wait Until Element is Visible  ${PleaseChooseOneValidationError}  5
    Click Button    ${KitchenCabinets}
    Click Button    ${KitchenFloor}
    Click Button    ${Flooring}
    Click Button    ${MasterBedroom}
    Click Button    ${Bathrooms}
    Click Button    ${BackyardDeck}
    Click Button    ${InterionPaint}
    Click Button    ${CounterTops}
    Click Button    ${NextButton}
    Wait Until Element is Visible  ${DescribeUpdatesCopy}  5
    Click Element  ${DescribeUpdatesCopy}
    Sleep  2
    Input Text  ${DescribeUpdatesCopy}  This is my description
    Sleep  1
    Click Button    ${NextButton}


Need Repairs
    [Tags]  Any Repairs or Improvements
    Log To Console  Repairs or Improvments Selection
    Wait Until Element is Visible  ${ImprovementsNeededHeader}  4
    Sleep  2
#   Element should not be Visible  ${RepairRequiredText}
    Click Button    ${NoButton}
    Wait Until Element is Visible  ${AgeOfRoofHeader}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${ImprovementsNeededHeader}  4
    Click Button    ${YesButton}
    Capture Page Screenshot
    Click Button    ${NoButton}
#    Sleep  2
#    Click Element  ${RepairRequiredText}
#    Input Text  ${ImprovementsNeededHeader}  These are my repairs

Age of Roof
    [Tags]  Roof Age
    Log To Console  How old is your roof
    Wait Until Element is Visible  ${AgeOfRoofHeader}  4
    Click Button  ${LessThanFiveBTN}
    Wait Until Element is Visible  ${HotWaterHeaterHeader}  4

Age of Water Heater
    [Tags]  Water Heater Age
    Log To Console  How old is you Water Heater
    Wait Until Element is Visible  ${HotWaterHeaterHeader}  4
    Click Button  ${FiveNineBTN}
    Wait Until Element is Visible  ${HVACHeader}  4



Age of HVAC
    [Tags]  HVAC age
    Log To Console  How old is your HVAC system
    Wait Until Element is Visible  ${HVACHeader}  4
    Click Button  ${TenMoreBTN}
    Wait Until Element is Visible  ${KitchenApplianceHeader}  4


Kitchen Appliances
    [Tags]  Describe Kitchen Appliances
    Log To Console  What kind of Kitchen Appliances
    Wait Until Element is Visible  ${KitchenApplianceHeader}  4
    Click Button  ${StainlessSteel}
    Wait Until Element is Visible  ${CeilingsHeader}  4


Ceilings
    [Tags]  Describe Ceilings
    Log To Console  What type of Ceilings
    Wait Until Element is Visible  ${CeilingsHeader}  4
    Click Button  ${PopcornCeilingButton}
    Wait Until Element is Visible  ${FlooringHeader}  4


Mail Level Floors
    [Tags]  Describe Floors
    Log To Console  What type of Floors
    Wait Until Element is Visible  ${FlooringHeader}  4
    Click Button    ${HardWoodBtn}
#    Click Button    ${HardWoodBtn}
#    Sleep  2
#    Wait Until Element is Visible  ${RequiredValidationText}  4
#    Click Button    ${HardWoodBtn}
    Click Button    ${TileBtn}
    Click Button    ${LaminatedBtn}
    Click Button    ${CarpetBtn}
    Click Button    ${OtherBth}
    Click Button    ${NextButton}
    Wait Until Element is Visible   ${LookingToSellTimeHeader}  4


Buy/Sell
    [Tags]  Buying or Selling
    Log To Console  Are you Buying or Selling
    Wait Until Element is Visible   ${LookingToSellTimeHeader}  4
    Click Button  ${ASAPBtn}
    Wait Until Element is Visible   ${HomeWorthHeader}   4


Home Worth
    [Tags]  Home Worth
    Log To Console   What is your home worth
    Wait Until Element is Visible   ${HomeWorthHeader}   4
    Click Element  ${HomeWorthText}
    Input Text  ${HomeWorthText}  350000
    Click Button    ${NextButton}
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  4


Currently on the Market
    [Tags]  Home on the Market
    Log To Console  Is you home currently on the market
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  4
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${AgentYesValidationText}  4
    Click Element  ${SituationTextField}
    Input Text  ${SituationTextField}  This is my situation
    Wait Until Element is Visible  ${NextButton}  4
    Click Button    ${NextButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${AgentYesValidationText}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${CurrentlyOnMarketHeader}  4
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  4


Looking to buy
    [Tags]  Are you looking to buy a home
    Log To Console  Are you looking to buy a home
    Wait Until Element is Visible  ${LookingToBuyHeader}  4
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${LookingToBuyHeader}  4
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${HaveYouFoundHeader}  4



Have you Found
    [Tags]  Have you found your House
    Log To Console  Have you found a new house
    Wait Until Element is Visible  ${HaveYouFoundHeader}  4
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${HaveYouFoundHeader}  4
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  4
    Click Button  ${BackButton}
    Click Button  ${YesButton}


Working with another Agent?
    [Tags]  Working with another Agent Question
    Log To Console  Are you working with another Agent
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  4
    Click Button  ${YesButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  4
    Click Button  ${BackButton}
    Wait Until Element is Visible  ${WorkingWithAnotherAgent}  4
    Click Button  ${NoButton}
    Wait Until Element is Visible  ${HowDidYouHearHeader}  4


How did you hear
    [Tags]  How did you hear
    Log To Console  How did you hear about Knock
    Wait Until Element is Visible  ${HowDidYouHearHeader}  4
    Click Button   ${TVSegmentBtn}
    Wait Until Element is Visible  ${EnterNameHeader}  4


Enter Name
    [Tags]  Enter a Name
    Log To Console  First and Last Name Entry
    Wait Until Element is Visible  ${EnterNameHeader}  4
    Click Element  ${FirstNameField}
    Input Text  ${FirstNameField}  Tom
    Click Element  ${LastNameField}
    Input Text  ${LastNameField}  Jones
    Click Button    ${NextButton}
    Wait Until Element is Visible  ${EstimateHeader}  4


Enter Your Email
    [Tags]  Email Entry
    Log To Console  Enter an Email Address
    Wait Until Element is Visible  ${EstimateHeader}  4
    Click Element  ${EmailTextField}
    Input Text  ${EmailTextField}  test@tester.com
    Click Button    ${NextButton}

Enter Mobile Number
    [Tags]  Mobile Number Entry
    Log To Console  Enter a Mobile Number
    Wait Until Element is Visible  ${MobileNumberHeader}  4
    Click Element  ${PhoneNumberField}
    Input Text  ${PhoneNumberField}  2122222222
    Wait Until Element is Visible  ${SubmitBtn}













