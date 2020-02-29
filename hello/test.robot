**** Settings ****
Library     app.py

*** Test Cases ***
Deve retornar Mensagem de Boas Vindas
    ${result}=          Welcome     Vitor
    Should Be Equal     ${result}   Olá Vitor, Bem vindo ao Curso Básico de Robot Framework!
