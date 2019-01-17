
# Test automation example

Test Automation with Robot Framework proof of concept.  

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

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

Test will run with Headless Chrome by default. This can be changed in the `${BROWSER}` variable in the  `Launch.robot` file

```
robot -d results  Central/Launch.robot
```
### Viewing Test Report and Log

The Robot Framework test results can be found in the results directory.  Results are displayed as a log, report, or as xml. The logs and reports provide a detailed view of the test suite. They also allow you to drill into the each test step which is helpful for test debugging. If there is a failed test Robot Framework includes a screen shot of the point of failure.

```
results/log.html
```

```
results/results.html
```

### Test Execution Video: This is a video of the full test suite being executed with Chrome

```
https://www.screencast.com/t/xFfm0zLy
```

### Test Log Example:

```
https://screencast.com/t/EDBp0dHa
```

### Test Report Example:

```
https://screencast.com/t/QiL3tgjL1QK
```




