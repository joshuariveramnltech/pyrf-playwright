### Sample Desktop Web Login Test run using Playwright + Robotframework

---

**Intro**  
Hi there!  
This repository contains a simple login test using ``robotframework-browser``.  
Apart from the default browser playwright includes, I also included in this sample support for the below browsers:  
* Coc Coc Browser
* Edge Browser
* 360 - not working as of now.. :(

**Pre-requisites**  
* NPM/Node
* Python >= 3.7
* pip

**Setup**  
Check Project pre-requisite before proceeding.
    
* First we need to install the playwright node package. run ``npm install``.
* Then, install the python dependencies. To install run ``pip install -r requirements.txt``
* We can now run the initiation module of the _robotframework-browser_.  ``rfbrowser init``.
* Thats it! all dependencies are now installed.  

**Running Sample Test**  
Having setup all the dependencies, you can now run the test with the browsers _microsoft playwright ships with_.   
Refer below for the command.  
```bash
robot -d results -v BROWSER:{browser} -v HEADLESS:{bool} play.robot
```
Where:
  * __{browser}__ could be any of the following: [``chromium``, ``firefox``, ``webkit``]
  * __{bool}__ could either be ``true`` or ``false``.

Sample Non Headless Run using chromium:
```bash
robot -d results -v BROWSER:chromium -v HEADLESS:false play.robot
```
  
Now, as i mentioned above, i included in this example sample support for other browsers.  
This will require additional setup. Refer below for individual guide.

**Edge**
For edge browser support, edge must be installed in your system.  
Create a system variable **EDGEBIN** that points to the absolute PATH of the edge browser executable.  

Thats it! Edge can be passed as value for the **BROWSER** param. See below for example.  
Sample Run using Edge:
```bash
# not headless
robot -d results -v BROWSER:Edge -v HEADLESS:false play.robot
# headless
robot -d results -v BROWSER:Edge -v HEADLESS:true play.robot
```

**CocCoc**
For Coc Coc browser support, Coc Coc must be installed in your system.  
Create a system variable **COCCOCBIN** that points to the absolute PATH of the Coc Coc browser executable.  

Thats it! Coc Coc can be passed as value for the **BROWSER** param. See below for example.  
Sample Run using Coc Coc:
```bash
# not headless
robot -d results -v BROWSER:CocCoc -v HEADLESS:false play.robot
# headless
robot -d results -v BROWSER:CocCoc -v HEADLESS:true play.robot
```

