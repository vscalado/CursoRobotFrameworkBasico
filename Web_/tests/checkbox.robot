*** Settings ****
Resource            base.robot

Test Setup          Nova Sessão  
Test Teardown       Encerra Sessão 

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando Opção com ID
    [Tags]      thor
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_iron} 
    Checkbox Should Be Selected     ${check_iron}

Marcando Opção com CSS Selector
    [Tags]      ironman
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Marcando Opção com Xpath
    [Tags]      blackpanther
    Go To                           ${url}/checkboxes   
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
