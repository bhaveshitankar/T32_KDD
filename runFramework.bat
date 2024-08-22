@REM behave -f html -o reports/report.html
@REM behave --format pretty --format behave_html_formatter:HTMLFormatter --outfile reports/report.html
behave -f allure_behave.formatter:AllureFormatter -o reports/allure-results
@REM extracted/allure-2.30.0/bin/allure serve reports/allure-results
extracted/allure-2.30.0/bin/allure generate --single-file reports/allure-results --output reports/allure-report --clean
start ./reports/allure-report/index.html
echo "strting report.."
