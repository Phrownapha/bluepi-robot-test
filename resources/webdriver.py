from selenium import webdriver
from selenium.webdriver.chrome.options import Options

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument('--no-sandbox')
driver = webdriver.Chrome('/usr/lib/chromium-browser/chromedriver', options=chrome_options)
driver.get('http://www.google.com')
print('test')
driver.close()