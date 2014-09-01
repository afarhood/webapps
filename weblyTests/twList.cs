using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium.Support.UI;
using NUnit.Framework;
using System.Configuration;
using System.Net;


namespace weblyTests
{
    [TestFixture]
    public class twList
    {
        [Test]
        public static void TestCol()
        {
            DesiredCapabilities capabilities = DesiredCapabilities.Firefox();
            RemoteWebDriver driver = new RemoteWebDriver(new Uri(ConfigurationManager.AppSettings["HubURL"].ToString()), capabilities);
    
            driver.Navigate().GoToUrl(ConfigurationManager.AppSettings["BaseURL"].ToString());
            driver.ExecuteScript("window.resizeTo(1220, 768);");
            var query = driver.FindElements(By.ClassName("col-lg-4"));
            Assert.GreaterOrEqual(query.Count(), int.Parse(ConfigurationManager.AppSettings["AcceptedNumberOfMainResults"].ToString()));
            driver.GetScreenshot().SaveAsFile(ConfigurationManager.AppSettings["SnapFolder"].ToString() + @"mainlist-" + DateTime.Now.ToShortDateString().Replace("/","-") + ".png", System.Drawing.Imaging.ImageFormat.Png);
            //Close the browser
            driver.Quit();

        }
        
    }
}
