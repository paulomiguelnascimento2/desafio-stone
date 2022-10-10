*** Settings ***
Resource            BDD.robot
Resource            KeywordsSunflower.robot

Library             AppiumLibrary
Variables           ../PageObjects/sunflower_pages_objects.py


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${PLATFORMNAME}                 Android
${DEVICENAME}                   Emulator
${UDID}                         emulator-5554
${APP}                           ${EXECDIR}/br.com.mobile.stone/app/sunflower.apk  

                 
*** Keywords ***

Open Android Test App
   
    open application        http://localhost:4723/wd/hub  
    ...                     automationName=${ANDROID_AUTOMATION_NAME}
    ...                     platformName=${PLATFORMNAME} 
    ...                     deviceName=${DEVICENAME}  
    ...                     udid=${UDID}
    ...                     app=${APP}  


Close App
    Close Application    
