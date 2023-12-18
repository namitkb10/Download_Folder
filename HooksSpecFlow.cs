using BoDi;
using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Edge;
using System.ComponentModel;
using TechTalk.SpecFlow;
using WebDriverManager.DriverConfigs.Impl;
using WindowsInput;
using WindowsInput.Native;

namespace SpecFlowBDD_22.HooksManager
{
    [Binding]
    public sealed class HooksSpecFlow
    {
        // For additional details on SpecFlow hooks see http://go.specflow.org/doc-hooks
        public static IWebDriver? driver;
        InputSimulator inputSim = new InputSimulator();
        // "@tag1"

        private readonly IObjectContainer _container;
        public HooksSpecFlow(IObjectContainer container)
        {
            _container = container;
        }

        // [BeforeScenario("@RQ01_FA25")]
        [BeforeScenario("RQ02_FA-30_tag1")]
        public void BeforeScenarioWithTag()
        {
            // Example of filtering hooks using tags. (in this case, this 'before scenario' hook will execute if the feature/scenario contains the tag '@tag1')
            // See https://docs.specflow.org/projects/specflow/en/latest/Bindings/Hooks.html?highlight=hooks#tag-scoping

            //TODO: implement logic that has to run before executing each scenario

            //TODO: implement logic that has to run before executing each scenario
            // IWebDriver driver = new Chrom

            Console.WriteLine("Started before scenario...");

            new WebDriverManager.DriverManager().SetUpDriver(new ChromeConfig());
            driver = new ChromeDriver();

            // new WebDriverManager.DriverManager().SetUpDriver(new EdgeConfig());
            // driver = new EdgeDriver();

            driver.Manage().Window.Maximize();
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(30);
            driver.Manage().Timeouts().PageLoad = TimeSpan.FromSeconds(30);

            //_container.RegisterInstanceAs<IWebDriver>(driver);

            // Login Code

            Thread.Sleep(3000);

            // driver.Navigate().GoToUrl("http://10.75.204.205/esd");
            
            // Testing URL
            driver.Navigate().GoToUrl("http://10.75.205.122/esd/");

            Thread.Sleep(3000);

            // Enter username
            inputSim.Keyboard.TextEntry("appportal\\appportal");
            Thread.Sleep(1000);
            // press Tab key 
            inputSim.Keyboard.KeyPress(VirtualKeyCode.TAB);
            Thread.Sleep(1000);
            // Enter Password 
            inputSim.Keyboard.TextEntry("Flexera!");
            Thread.Sleep(4000);
            // Click on Sign In button 
            // inputSim.Keyboard.KeyPress(VirtualKeyCode.TAB);
            // inputSim.Keyboard.KeyPress(VirtualKeyCode.TAB);
            // inputSim.Keyboard.KeyPress(VirtualKeyCode.TAB);

            inputSim.Keyboard.KeyPress(VirtualKeyCode.RETURN);
            Thread.Sleep(15000);
            Assert.True(driver.Title.Contains("Flexera Software App Portal"));

            Console.WriteLine("Authentication Pop-up Login Completed through hooks");
            // Make this instance available to all other step definitions
            //container.RegisterInstance(driver);
            // _container.RegisterInstanceAs<IWebDriver>(driver);

            _container.RegisterInstanceAs<IWebDriver>(driver);

        }

        [BeforeScenario(Order = 2)]
        public void FirstBeforeScenario()
        {
            // Example of ordering the execution of hooks
            // See https://docs.specflow.org/projects/specflow/en/latest/Bindings/Hooks.html?highlight=order#hook-execution-order

            //TODO: implement logic that has to run before executing each scenario
        }

        [AfterScenario]
        public void AfterScenario()
        {
            //TODO: implement logic that has to run after executing each scenario
            Console.WriteLine("Running after scenario...");
            var driver = _container.Resolve<IWebDriver>();

            Console.WriteLine("After Scenario driver value is: " + driver);

            /*if (driver != null)
            {
                driver.Quit();
            }*/
        }
    }
}