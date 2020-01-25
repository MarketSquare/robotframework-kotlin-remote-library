*** Settings ***

Library    Remote     http://localhost:8270/
Library    OperatingSystem

*** Test Cases ***

SERVER CHECK : Run the Say Something keyword from a remote library and it should display in the log.html result file.
    Say Something Kotlin
    [Tags]    This_Is_Not_An_Actual_Test

SERVER CHECK : Run the Check String keyword from a remote library and it should be equal to String.
    Check String Kotlin
    [Tags]    This_Is_Not_An_Actual_Test

SERVER CHECK : Run the Just Text Kotlin keyword from a remote library and it should display in the log.html result file.
    Just Text Kotlin
    [Tags]    This_Is_Not_An_Actual_Test

TEST 1 : Run the Kotlin Native C Library keyword that will gradually increase physical memory utilization to check how well the environment handles it.
    Run Increased Memory Allocation Check
    [Tags]    This_Is_An_Actual_Test

TEST 2 : Run the Kotlin Native C Library keyword that will check physical memory utilization after fuzzing the Kotlin Native application executable with ScalaCheck.
    Run Memory Utilization Check
    [Tags]    This_Is_An_Actual_Test

TEST 3 : Run the Kotlin Native C Library keyword that will check CPU utilization after fuzzing the Kotlin Native application executable with ScalaCheck.
    Run CPU Utilization Check
    [Tags]    This_Is_An_Actual_Test

*** Keywords ***

Say Something Kotlin
    ${val}=    Say Something    "Hello everyone"
    Should Be Empty   ${val}
    Log    ${val}

Check String Kotlin
    ${val}=    Check String    8675309
    Should Be Equal   ${val}   String
    Log To Console    ${val}
    Log    ${val}

Just Text Kotlin
    ${val}=    Just Text
    Should Be Equal   ${val}   Nothing special
    Log To Console    ${val}
    Log    ${val}

Run Kotlin Check
    [Documentation]   There are two types of arguments that can be passed to the Run Kotlin Check Data Generator
    ...               keyword, 1 or 2. Setting it to 1 will generate a medium amount of fuzz test data.
    ...               Setting it to 2 will generate a heavy amount of fuzz test data.
    Run Kotlin Check Data Generator In Docker    2

Run CPU Utilization Check
    Run Kotlin Native C Library CPU Utilization Check
    ${val}=    Get File    /rfw/tools/test-data-logs/scalanativecustomclibrary.txt
    Should Contain    ${val}    Current CPU utilization
    Should Not Contain    ${val}    Current CPU utilization = 1.
    Log To Console    ${val}
    Log    ${val}

Run Memory Utilization Check
    Run Kotlin Native C Library Memory Utilization Check
    ${val}=    Get File    /rfw/tools/test-data-logs/scalanativecustomclibrary.txt
    Should Contain    ${val}    Check current memory usage (no allocation)
    Should Not Contain    ${val}    NULL
    Should Not Contain    ${val}    Segmentation fault (core dumped)
    Log To Console    ${val}
    Log    ${val}

Run Increased Memory Allocation Check
    Run Kotlin Native C Library Increased Memory Allocation Check
    ${val}=    Get File    /rfw/tools/test-data-logs/scalanativecustomclibrary.txt
    Should Contain    ${val}    Wait then check memory usage again...
    Should Not Contain    ${val}    NULL
    Should Not Contain    ${val}    Segmentation fault (core dumped)
    Log To Console    ${val}
    Log    ${val}
