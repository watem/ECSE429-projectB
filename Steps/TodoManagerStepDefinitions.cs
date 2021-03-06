using TechTalk.SpecFlow

namespace {TODO}.Steps  //TODO

{
  [Binding]
  public sealed class TodoManagerStepDefinitions {
    // For additional details on SpecFlow step definitions see https://go.specflow.org/doc-stepdef

    private readonly ScenarioContext _scenarioContext;

    public TodoManagerStepDefinitions(ScenarioContext scenarioContext) {
      _scenarioContext = scenarioContext;
    }

    [BeforeScenario]
    public static void SetUpTodoMangerForScenario() {
      //turn on the todo manager
    }
    [AfterScenario]
    public static void TearDownTodoMangerForScenario() {
      //shutdown the todo manager
    }


    [Given("the service is running")]
    public void GivenServiceRunning() {
        //TODO: Ensure story tests fail if service is not running

        _scenarioContext.Pending();
    }


    [Given("there is a course (\d*)")]
    public void GivenCourseExists(int id) {
        //TODO: implement arrange (precondition) logic
        // For storing and retrieving scenario-specific data see https://go.specflow.org/doc-sharingdata
        // To use the multiline text or the table argument of the scenario,
        // additional string/Table parameters can be defined on the step definition
        // method.

        //TODO check if a course exists with the id, if it doesn't add courses until there is

        _scenarioContext.Pending();
    }

    [Given("there is not a course (\d*)")]
    [Given("course (\d*) does not exist")]
    public void GivenCourseNotExists(int id) {
        //TODO: if it doesn't exist, do nothing, if it exists, delete it. alternatively just delete it and ignore if there is an error

        _scenarioContext.Pending();
    }

    [Given("a task (\d*) already exists")]
    public void GivenTaskExists(int id) {
        //TODO: check if a task exists with the id, if it doesn't add courses until there is

        _scenarioContext.Pending();
    }

    [Given("task (\d*) does not exist")]
    public void GivenTaskNotExists(int id) {
        //TODO: if it doesn't exist, do nothing, if it exists, delete it. alternatively just delete it and ignore if there is an error

        _scenarioContext.Pending();
    }

    [Given("there are HIGH, MEDIUM, and LOW priorities")]
    public void GivenThereArePriorities() {
        //TODO: create high, medium, and low priorities (categories)

        _scenarioContext.Pending();
    }

    [Given("a task (\d*) without a priority")]
    public void GivenTaskExistsNoPriority(int id) {
        //TODO: check if a task exists with the id, if it doesn't add tasks until there is. remove all categories if any

        _scenarioContext.Pending();
    }

    [Given("task (\d*) has a priority (.*)")]
    public void GivenTaskHasSpecificPriority(int id, string priority) {
        //TODO: remove all categories if any except for the given priority

        _scenarioContext.Pending();
    }

    [Given("task (\d*) does not have a description")]
    public void GivenTaskHasNoDescription(int id) {
        //TODO: set description to empty

        _scenarioContext.Pending();
    }

    [Given("task (\d*) has (.*) of (.*)")]
    public void GivenTaskHasSpecificField(int id, string field, string value) {
        //TODO: set field to value. if value is a boolean, switch it to bool

        _scenarioContext.Pending();
    }
    [Given("a title .*, and .* .* for a course")]
    public void GivenCourseValues() {
        //TODO: basically do nothing

        _scenarioContext.Pending();
    }
    [Given("a class with a (.*), and (.*) already exists")]
    public void GivenCourseExistsWithValues(string title, string description) {
        //TODO: create a course with given values

        _scenarioContext.Pending();
    }
    [Given("a incomplete task (\d*)")]
    public void GivenIncompleteTask(int id) {
        //TODO: create a class with id with and make sure doneStatus is false

        _scenarioContext.Pending();
    }
    [Given("a complete task (\d*)")]
    public void GivenCompleteTask(int id) {
        //TODO: same as above but doneStatus is true

        _scenarioContext.Pending();
    }

    [Given("course (\d*) has task (\d*)")]
    public void GivenCourseHasTask(int courseId, int taskId) {
        //TODO: make sure that there is a link from course to task

        _scenarioContext.Pending();
    }

    [Given("a incomplete high priority task (\d*)")]
    public void GivenIncompleteHighPriorityTask(int id) {
        //TODO: create a task that has doneStatus false, and high priority

        _scenarioContext.Pending();
    }
    [Given("a complete high priority task (\d*)")]
    public void GivenCompleteHighPriorityTask(int id) {
        //TODO: same as above but doneStatus is true

        _scenarioContext.Pending();
    }
    [Given("a incomplete medium priority task (\d*)")]
    public void GivenIncompleteMediumPriorityTask(int id) {
        //TODO: create a task that has doneStatus false, and medium priority

        _scenarioContext.Pending();
    }

    [Given("course (\d*) does not have task (\d*)")]
    public void GivenCourseNotHasTask(int courseId, int taskId) {
        //TODO: remove any link from course to task

        _scenarioContext.Pending();
    }
    [Given("course (\d*) active is true")]
    public void GivenCourseActive(int id) {
        //TODO: set active to true

        _scenarioContext.Pending();
    }






// when header
    [When("the task is created with id (\d*), title (.*), and description (.*)")]
    public void WhenCreateTask(int id, string title, string description) {
        //TODO: create task with given title, description and id (repeat until you reach the id)

        _scenarioContext.Pending();
    }

    [When("the task (\d*) is added to the course (\d*)")]
    public void WhenAddTaskToCourse(int taskId, int courseId) {
        //TODO: add task to the course

        _scenarioContext.Pending();
    }

    [When("the task (\d*) is given a high priority")]
    public void WhenGiveTaskHighPriority(int id) {
        //TODO: add high priority category to the task

        _scenarioContext.Pending();
    }
    [When("the task (\d*) is given a medium priority")]
    public void WhenGiveTaskMediumPriority(int id) {
        //TODO: add medium priority category to the task

        _scenarioContext.Pending();
    }
    [When("the task (\d*) is given a low priority")]
    public void WhenGiveTaskLowPriority(int id) {
        //TODO: add low priority category to the task

        _scenarioContext.Pending();
    }

    [When("the task (\d*) is given a invalid priority (.*)")]
    public void WhenGiveTaskInvalidPriority(int id, string priority) {
        //TODO: attempt to add the priority to the task

        _scenarioContext.Pending();
    }

    [When("task (\d*) is given priority (.*)")]
    public void WhenGiveTaskspecificPriority(int id, string priority) {
        //TODO: attempt to add the priority to the task

        _scenarioContext.Pending();
    }

    [When("task (\d*) has its (.*) set to (.*)")]
    public void WhenGiveTaskSpecificField(int id, string field, string value) {
        //TODO: attempt to set the field to value

        _scenarioContext.Pending();
    }

    [When("the class is created with a title (.*), and (.*) of (.*)")]
    public void WhencreateClass(string title, string field, string value) {
        //TODO: create a new project with title, and field (most of the time description) set to value

        _scenarioContext.Pending();
    }

    [When("all incomplete tasks of course (\d*) are queried")]
    public void WhenQueryClassIncompleteTasks(int id) {
        //TODO: get list of incomplete tasks

        _scenarioContext.Pending();
    }

    [When("all incomplete high priority tasks of course (\d*) are queried")]
    public void WhenQueryClassIncompleteHighPriorityTasks(int id) {
        //TODO: get list of incomplete high priority tasks

        _scenarioContext.Pending();
    }

    [When("the task (\d*) is removed from course (\d*)")]
    public void WhenRemoveTaskFromCourse(int taskId, int courseId) {
        //TODO: remove link from project to task

        _scenarioContext.Pending();
    }
    [When("the task (\d*) is deleted")]
    public void WhenDeleteTask(int taskId) {
        //TODO: delete the task

        _scenarioContext.Pending();
    }
    [When("course (\d*) is removed")]
    public void WhenDeleteCourse(int id) {
        //TODO: delete the course

        _scenarioContext.Pending();
    }

    [When("course (\d*) is deactivated")]
    public void WhenDeactivateCourse(int id) {
        //TODO: set active to false

        _scenarioContext.Pending();
    }
// then header

    [Then("a \"(.*)\" message is sent")]
    public void ThenMessageSent(string msg) {
        //TODO: check the response code matches. can switch to just the int if needed, in which case, edit the feature files

        _scenarioContext.Pending();
    }


    [Then("the task (\d*) is in the course (\d*)")]
    public void ThenTaskInCourse(int taskId, int courseId) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("course (\d*) does not have task (\d*)")]
    public void ThenTaskNotInCourse(int courseId, int taskId) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("the task (\d*) has the HIGH priority category")]
    public void ThenTaskHasHighPriority(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("the task (\d*) has the MEDIUM priority category")]
    public void ThenTaskHasMediumPriority(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("the task (\d*) has the LOW priority category")]
    public void ThenTaskHasLowPriority(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("the task (\d*) does not have a priority")]
    public void ThenTaskExistsNoPriority(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("task (\d*) has priority (.*)")]
    public void ThenTaskHasSpecificPriority(int id, string priority) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("task (\d*) has a (.*) (.*)")]
    public void ThenTaskHasSpecificProperty(int id, string field, string value) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("there is a course with a title (.*), and (.*) of (.*)")]
    public void ThenCourseExists(string title, string field, string value) {
        //TODO: implement assert (verification) logic (query list and get size=1)

        _scenarioContext.Pending();
    }
    [Then("there are two classes with a title (.*), and (.*) of (.*)")]
    public void ThenMultipleCoursesExist(string title, string field, string value) {
        //TODO: implement assert (verification) logic (query list and get size=2)

        _scenarioContext.Pending();
    }
    [Then("there are no courses with title (.*)")]
    public void ThenNoCoursesExist(string title) {
        //TODO: implement assert (verification) logic (query list and get size=0)

        _scenarioContext.Pending();
    }
    [Then("a list of (\d*) and (\d*) without (\d*) is returned")]
    public void ThenFoundIncompleteTasks(int id1, int id2, int id3) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("an empty list is returned")]
    public void ThenFoundEmptyList() {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("a list of task (\d*) and task (\d*) without task (\d*) or task (\d*) is returned")]
    public void ThenFoundIncompleteHighPriorityTasks(int id1, int id2, int id3, int id4) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }
    [Then("course (\d*) does not exist")]
    public void ThenCourseNotExist(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }

    [Then("course (\d*) active is false")]
    public void ThenCourseNotActive(int id) {
        //TODO: implement assert (verification) logic

        _scenarioContext.Pending();
    }





  }
}
