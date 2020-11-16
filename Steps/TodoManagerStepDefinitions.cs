using TechTalk.SpecFlow

namespace {TODO}.Steps  //TODO

{
  [Binding]
    public sealed class TodoManagerStepDefinitions
    {

        // For additional details on SpecFlow step definitions see https://go.specflow.org/doc-stepdef

        private readonly ScenarioContext _scenarioContext;

        public TodoManagerStepDefinitions(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }


        [Given("the service is running")]
        public void GivenServiceRunning()
        {
            //TODO: Ensure story tests fail if service is not running

            _scenarioContext.Pending();
        }


        [Given("there is a course (\d*)")]
        public void GivenCourseExists(int id)
        {
            //TODO: implement arrange (precondition) logic
            // For storing and retrieving scenario-specific data see https://go.specflow.org/doc-sharingdata
            // To use the multiline text or the table argument of the scenario,
            // additional string/Table parameters can be defined on the step definition
            // method.

            //TODO check if a course exists with the id, if it doesn't add courses until there is

            _scenarioContext.Pending();
        }

        [Given("course (\d*) does not exist")]
        public void GivenCourseNotExists(int id)
        {
            //TODO: if it doesn't exist, do nothing, if it exists, delete it. alternatively just delete it and ignore if there is an error

            _scenarioContext.Pending();
        }

        [Given("a task (\d*) already exists")]
        public void GivenTaskExists(int id)
        {
            //TODO: check if a task exists with the id, if it doesn't add courses until there is

            _scenarioContext.Pending();
        }

        [Given("task (\d*) does not exist")]
        public void GivenTaskNotExists(int id)
        {
            //TODO: if it doesn't exist, do nothing, if it exists, delete it. alternatively just delete it and ignore if there is an error

            _scenarioContext.Pending();
        }





// when header
        [When("the task is created with id (\d*), title (.*), and description (.*)")]
        public void WhenCreateTask(int id, string title, string description)
        {
            //TODO: create task with given title, description and id (repeat until you reach the id)

            _scenarioContext.Pending();
        }

        [When("the task (\d*) is added to the course (\d*)")]
        public void WhenAddTaskToCourse(int taskId, int courseId)
        {
            //TODO: add task to the course

            _scenarioContext.Pending();
        }


// then header

        [Then("a \"(.*)\" message is sent")]
        public void ThenTaskInCourse(string msg)
        {
            //TODO: check the response code matches. can switch to just the int if needed, in which case, edit the feature files

            _scenarioContext.Pending();
        }


        [Then("the task (\d*) is in the course (\d*)")]
        public void ThenTaskInCourse(int taskId, int courseId)
        {
            //TODO: implement assert (verification) logic

            _scenarioContext.Pending();
        }

        [Then("course (\d*) does not have task (\d*)")]
        public void ThenTaskInCourse(int courseId, int taskId)
        {
            //TODO: implement assert (verification) logic

            _scenarioContext.Pending();
        }



    }


}
