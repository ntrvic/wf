Feature: Tasks
    Scenario: Create a task
    Given my username is "AutoTest"
    And I am logged in

    When I create "Other" task with "Blank" use case
    And I Upload Data for 100 records with "COMMA" separator
    And I Design Task via task designer with the following attributes:

    And I add answer with the following attributes:
    | option                     | value |
    | Unique Code                |       |
    | Answer                     |       |
    | Answer Type                |       |
    | Description                |       |
    | Required                   | no    |
    | Allow N/A                  | no    |
    | CSS Rules                  | N/A   |
    | Default Value              | N/A   |
    | Do Not Use in Adjudication | N/A   |

    Then I expect to see the answer with the name "test"

    When I set Run Task properties to the following attributes:
    | option          | value            |
    | Workforce       | Default WorkFoce |
    | Block Size      | 1                |
    | Task Priority   | Normal           |
    | Reward per Task | 0.0              |
    |                 |                  |
    And I set Advanced Options Properties to the following attributes:
    | option                                     | value           |
    | Keywords                                   | fast, good, idk |
    | Description                                |                 |
    | Custom Attributes                          |                 |
    | Time Alloted Per Task                      |                 |
    | Task Expires in                            |                 |
    | Max Number of Pending Assignments per Task |                 |
    | Frame Height                               |                 |
    | Due Date                                   |                 |
    | External Form URL                          |                 |
    | Unique Column Name                         |                 |
    | Permanent Open Tasks                       |                 |
    | Turn On Recommendations for Automation     |                 |
    | Percentage of Gold Records                 |                 |
    | Enable Dynamic Task Rendering              |                 |
    | Forcefully Complete Tasks                  |                 |
    And I set Advanced Options Adjudication to the following attributes:
    | options              | value |
    | Min # of Assignments |       |
    | Max # of Assignments |       |
    | Adjudication Rule    |       |
    | Price Strategy       |       |
    | Enable Manual Review |       |
    And I set Advanced Options Qualification to the following attributes:
    | options                                         | value |
    | Qualification1                                  |       |
    | Condition 1                                     |       |
    | Value1                                          |       |
    | Require All Qualifications to Preview  the Task |       |
    | Qualification Task                              |       |
    | Maintain Constant Number of Qualified Workers   |       |
    And I set Advanced Options Availability to the following attributes:
    | option | value |
    |        |       |
    And I set Advanced Options Bonus to the following attributes:
    | option | value |
    |        |       |
    And I set Advanced Options Notification to the following attributes:
    | option | value |
    |        |       |
    And I Run Task
    Then I expect to see "Run Started Successfully!"

