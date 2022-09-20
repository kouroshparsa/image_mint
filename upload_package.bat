pylint image_mint || goto :error

python image_mint\test.py || goto :error

pyinstaller --onefile -w image_mint/console.py || goto :error
move dist\console.exe bin\image_mint.exe || goto :error

python setup.py sdist || goto :error
twine upload dist/* --skip-existing || goto :error

echo "Published successfully"

exit /b 0
error:
exit /b %errorlevel%