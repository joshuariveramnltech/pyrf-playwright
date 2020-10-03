*** Settings ***
Documentation                               Playwright sample

# Import Playwright Robotframework Library
Library                                     Browser

# Load Variable File
Variables                                   vars.yaml

# Launch a session with the browser specified
Suite Setup                                 Launch ${BROWSER} Browser



*** Test Cases ***
Demo Login Test on ${BROWSER}
    [Documentation]                         Playwright Test
    Click                                   ${homepage}[navbar][signin]
    Fill Text                               ${accountlogin}[form][username]            %{U_NAME}
    Fill Secret                             ${accountlogin}[form][password]            %{U_PASS}
    Click                                   ${accountlogin}[form][submit]


*** Keywords ***
Launch ${BROWSER} Browser
    [Documentation]                         Launches the ${BROWSER} Browser using playwright.
    New Browser                             ${BROWSER}        headless=false
    New Context                             viewport={'width': 1920, 'height': 1080}
    New Page                                ${homepage}[url]

Launch Edge Browser
    [Documentation]                         Launches the Edge Browser using playwright.
    New Browser                             chromium         headless=${HEADLESS}       executablePath=%{EDGEBIN}
    New Context                             viewport={'width': 1920, 'height': 1080}
    New Page                                ${homepage}[url]

# TO DO - Not Working!
Launch 360 Browser
    [Documentation]                         Launches the 360 Browser using playwright.
    New Browser                             chromium        headless=${HEADLESS}        executablePath=%{SEBIN}
    New Context                             viewport={'width': 1920, 'height': 1080}
    New Page                                ${homepage}[url]

Launch CocCoc Browser
    [Documentation]                         Launches the CocCoc Browser using playwright.
    New Browser                             chromium        headless=${HEADLESS}        executablePath=%{COCCOCBIN}
    New Context                             viewport={'width': 1920, 'height': 1080}
    New Page                                ${homepage}[url]
