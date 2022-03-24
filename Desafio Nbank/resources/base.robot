*Settings*
Library     Browser
Library     String 
#Resource    actions.robot

Documentation       Aqui não é suite, mas o arquivo principal do projeto
**Variables**
${BASE_URL}         https://nbank.vercel.app

**Keywords**
Start session
    New browser     chromium        headless=False      slowMo=00:01
    New Page        ${BASE_URL}

End session
    Take Screenshot