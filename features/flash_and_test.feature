Feature: Flash and test the device
  Scenario: Flash .elf and .ptp files to the device and run tests
    Given the .elf file is prepared for flashing
    And the .ptp file is prepared for flashing
    When the files are flashed to the device
    Then the device should reboot successfully
    And the test cases are executed on the device
    Then the test results should be reported