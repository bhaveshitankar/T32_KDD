from lauterbach.trace32.rcl import rcl as t32 
from behave import step
import logging

@step('the .elf file is prepared for flashing')
# @given('the .elf file is prepared for flashing')
def prepare_elf_file(context):
    context.logger.log(logging.INFO,"started @given('the .elf file is prepared for flashing')")
    context.elf_file = "path/to/your.elf"
    context.logger.log(logging.INFO,"ended @given('the .elf file is prepared for flashing')")

@step('the .ptp file is prepared for flashing')
# @given('the .ptp file is prepared for flashing')
def prepare_ptp_file(context):
    context.logger.log(logging.INFO,"started @given('the .ptp file is prepared for flashing')")
    context.ptp_file = "path/to/your.ptp"
    context.logger.log(logging.INFO,"ended @given('the .ptp file is prepared for flashing')")

@step('the files are flashed to the device')
# @when('the files are flashed to the device')
def flash_files(context):
    try:
        t32.connect()
        t32.flash(context.elf_file, context.ptp_file)
        t32.disconnect()
    except Exception as e:
        context.logger.log(logging.ERROR,str(e),stack_info=True)
        raise e

@step('the device should reboot successfully')
# @then('the device should reboot successfully')
def verify_reboot(context):
    # Implement reboot verification logic
    pass

@step('the test cases are executed on the device')
# @then('the test cases are executed on the device')
def execute_tests(context):
    # Run your test cases using the Trace32 API or another test framework
    pass

@step('the test results should be reported')
# @then('the test results should be reported')
def generate_report(context):
    # Generate an HTML report with logs
    context.reporter.generate_report()
    context.logger.log(logging.INFO,"ended @then('the test results should be reported')")
