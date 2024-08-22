cd /d "%~dp0"
behave -f allure_behave.formatter:AllureFormatter -o reports/allure-results
"./extracted/allure-2.30.0/bin/allure" generate --single-file reports/allure-results --output reports/allure-report --clean && start ./reports/allure-report/index.html
