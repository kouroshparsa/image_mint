<i>image_scraper</i>

#Purpose
- This python package can be used to download images from various search engines.
  You can specify minimum width and height of the image if you want.

#Installation
- You must have Chrome browser installed. You can download it from https://www.google.com/chrome/
  On Ubuntu, you can run:
  ```wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb```
- You must download Chrome webdriver. You can download it from https://chromedriver.chromium.org/downloads
  To know which version of Chrome is installed to match the driver version, you can use this command on Ubuntu:
  `dpkg --list|grep chrome`
- After that, you can install the package using pip:
  ```
  pip install image_scraper
  ```

#Usage:
You can use the package in python code like so:
```python
    from image_scraper import Scraper  
    from image_scraper.engines import Google
    scraper = Scraper(Google('c:/temp/animals/chromedriver.exe'))
    scraper.download("cat", "c:/temp/animals/images", limit=100, min_width=200)
```

You can also use command line:
```
python image_scraper\console.py -c C:\temp\animals\chromedriver.exe -d C:\temp\animals\images -e Bing "Wild cats" -l 20 -mw 200
```
Here are the flags that can be used:
- `-e` : the search engine, possible values: DogPile/Bing/Google/DuckDuckGo/Yahoo
- `-d` : the destination folder to download images to
- `-c` : the chrome driver path using
- `-l` : number of images to download
- `-mw` : minimum width
- `-mh` : minimum height

You can use other languages as well:
```
python image_scraper\console.py -c /tmp/chromedriver.exe -d /tmp/images -e Google "πλοίο" -l 20 -mw 200
```