***Settings***
### Global ###
Resource     ../resources/global_lib.resource

### Page keyword releted ###
Resource    ../keywords/to_do_list.resource

## TEST DATA
Variables    ../resources/testdata/to_do_list.yaml

# Suite Teardown 
Test Teardown    Close browser


***Test Cases***
Add To Do Tasks - success       
    [Tags]    addtasks     todo

    Given User go to website
    When User add to do tasks "${TO_DO_LIST_EXAMPLE['A']}"
    And Verify that add to do tasks success

Delete To Do Task - success
    [Tags]    addtasks     todo
    Given User go to website
    When User add to do tasks "${TO_DO_LIST_EXAMPLE['B']}"
    And Verify that add to do tasks success
    And User delete to do task in TO-DO TASKS Tab
    Then Verify that not show task in TO-DO TASKS Tab

Check complete and delete To Do Task in COMPLATED Tab - success
    [Tags]    addtasks     todo
    Given User go to website
    When User add to do tasks "${TO_DO_LIST_EXAMPLE['B']}"
    And Verify that add to do tasks success
    And User checkbox to do tasks success
    Then TO-DO TASKS is show in COMPLATED Tab
    And User delete to do task in COMPLATED Tab