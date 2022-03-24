**Settings**

Documentation           Suite de testes para verificar que ao fazer pix de ZERO reais, gera mensagem de erro 
Library     Browser
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start session 
Test Teardown   End session 
Force Tags      ex_3


**Test Cases**
Makes Poor Pix 
    Click         xpath=//strong[contains(text(), "Fazer PIX")]
    #Click         xpath=//span//select 
    Select Options By       xpath=//span//select         value        Nubank 
    Fill Text            id=chave-pix             Agiota 
    Fill Text            id=valor                 0
    Click                css=.button >> text=Enviar PIX
    Wait For Elements State         css=.media-content >> text=Oops. Transferir ZERO é osso hein... 
    
