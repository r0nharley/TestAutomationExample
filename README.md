
# Trade-in workflow automation example

Test Automation with Robot Framework Proof of Concept.  This script runs through the Knock Trade-In Workflow 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites


RobotFramework<br>
Selenium Library<br>
Headless Chrome<br>
Headless Firefox<br>
PhantomJS<br>



### Installing

How to get a development env running locally

Install Robot Framework

```
pip install robotframework
```

Install the Selenium Library for Robot Framework

```
pip install --upgrade robotframework-seleniumlibrary
```


Install the Chromedriver and add it to Path

```
brew install chromedriver
```


Install Headless Firefox and add to Path

```
https://github.com/mozilla/geckodriver/releases/tag/v0.23.0
```

Install PhantomJS and add to Path (Please Note: PhantomJS is no longer being maintained)

```
http://phantomjs.org/download.html
```

## Running the tests

Test will run with Headless Firefox by default. This can be changed in the `${BROWSER}` variable in the  `Launch.robot` file

```
robot -d results  Central/Launch.robot
```
### Viewing Test Report and Log

The Robot Framework test results can be found in the results directory

```
results/log.html
```

```
results/results.html
```
