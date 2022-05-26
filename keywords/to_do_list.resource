*** Settings ***
Variables    ../resources/locators/to_do_list_locator.yaml
Variables    ../resources/endpoint.yaml

*** Keywords ***

User go to website
    Open Browser        ${TO_DO_LIST_URL}      chrome   
    Maximize browser window

User add to do tasks "${keyword}"
    Input Text          ${to_do_list['add_item']['field_input_task']}      ${keyword}
    click Element       ${to_do_list['add_item']['btn_add_task']}

Verify that add to do tasks success
    click element       ${to_do_list['to_do_task']['tab_to_do_tasks']}
    Page Should Contain Element    ${to_do_list['to_do_task']['txt_to_do_tasks']}

User delete to do task in TO-DO TASKS Tab
    click element       ${to_do_list['to_do_task']['btn_delete_to_do_task']}

Verify that not show task in TO-DO TASKS Tab
    Page Should Not Contain Element       ${to_do_list['to_do_task']['btn_delete_to_do_task']}

User checkbox to do tasks success
    click element       ${to_do_list['to_do_task']['txt_to_do_tasks']}

TO-DO TASKS is show in COMPLATED Tab
    click element       ${to_do_list['completed']['tab_completed']}
    Page Should Contain Element    ${to_do_list['completed']['txt_to_do_tasks_completed']}

User delete to do task in COMPLATED Tab
    click element       ${to_do_list['to_do_task']['btn_delete_to_do_task']}
    Page Should Not Contain Element       ${to_do_list['completed']['txt_to_do_tasks_completed']}


