Set SELENIUM_VERSION=3.0.1

start /min java -jar selenium-server-standalone-3.0.1.jar -role hub

start /min java -Dwebdriver.gecko.driver=C:\Selenium\geckodriver.exe -jar selenium-server-standalone-3.0.1.jar -role webdriver -hub http://192.168.5.18:4444/grid/register -port 5566

start /min java -Dwebdriver.chrome.driver=C:\Selenium\chromedriver.exe -jar selenium-server-standalone-3.0.1.jar -port 5567 -role node -hub http://192.168.5.18:4444/grid/register 

start /min java -Dwebdriver.ie.driver=C:\Selenium\IEDriverServer.exe -jar selenium-server-standalone-3.0.1.jar -port 5568 -role node -hub http://192.168.5.18:4444/grid/register 

start /min java -jar selenium-server-standalone-%SELENIUM_VERSION%.jar -role webdriver -hub http://192.168.5.18:4444/grid/register -port 5569