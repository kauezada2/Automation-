**Settings**

Documentation           Suite de testes para verificar que ao fazer PIX valido, a trsnferência é relaizada e o valor descontado da conta
Library     Browser
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start session 
Test Teardown   End session 
Force Tags      ex_2


**Test Cases**
Makes Valid Pix 
    Click         xpath=//strong[contains(text(), "Fazer PIX")]
    #Click         xpath=//span//select 
    Select Options By       xpath=//span//select         value        Next 
    Fill Text            id=chave-pix             Centauro 
    Fill Text            id=valor                 100
    Click                css=.button >> text=Enviar PIX 
    
    Wait For Elements State         css=.navbar-item >> text=Olá Papito, seu saldo é R$ 900  
    ...                             visible     5
    Wait For Elements State         xpath=//td[contains(text(), "Next - PIX para Centauro")]      #validação dos detalhes já validam com exatidão a transaçãa
    ...                             visible     5
    Sleep              10s