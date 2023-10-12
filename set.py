from selenium import webdriver

# Set the path to ChromeDriver
driver = webdriver.Chrome(executable_path='/usr/local/bin/chromedriver')

# Navigate to a website
driver.get('https://www.google.com')

# Perform automation tasks
# ...

# Close the browser
driver.quit()

