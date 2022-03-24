**Settings**

Documentation           Suite de testes para verificar que o nbank está online e com saldo de 1000R$
Library     Browser
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start session 
Test Teardown   End session 
Force Tags      ex_1


**Test Cases**
Nbank Should Be Online 
    Get Title       equal       nBank by QAninja  

Validate Account Balance 
    Wait For Elements State         css=.navbar-item >> text=Olá Papito, seu saldo é R$ 1000  
    ...         visible     5
