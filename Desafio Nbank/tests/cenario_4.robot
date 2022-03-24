**Settings**

Documentation           Suite de testes para verificar que ao relaizar um pix negativo gera mensagem de erro 
Library     Browser
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start session 
Test Teardown   End session 
Force Tags      ex_4


**Test Cases**
Makes Wrong Pix 
    Click         xpath=//strong[contains(text(), "Fazer PIX")]
    #Click         xpath=//span//select 
    Select Options By       xpath=//span//select         value        Neon 
    Fill Text            id=chave-pix             Minha Conta  
    Fill Text            id=valor                 -1
    Click                css=.button >> text=Enviar PIX
    Wait For Elements State         css=.media-content >> text=Oops. Transferir ZERO é osso hein... 