package com.vytrack.step_definitions;

import com.vytrack.pages.LoginPage;
import com.vytrack.utilities.ConfigurationReader;
import com.vytrack.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class LoginStepDefinitions {

    LoginPage loginPage = new LoginPage();
    @Given("user on the landing page")
    public void user_on_the_landing_page() {
        System.out.println("Open login page");
        String URL = ConfigurationReader.getProperty("qa3");
        Driver.getDriver().get(URL);
    }

    @When("user log in as sales manager")
    public void user_log_in_as_sales_manager() {
        System.out.println("Login as sales manager");
        loginPage.login("salesmanager110","UserUser123");
    }


    @When("user log in as store manager")
    public void user_log_in_as_store_manager() {
       loginPage.login();
    }

    @Then("user should verify that title is a Dashboard")
    public void user_should_verify_that_title_is_a_Dashboard() {
        System.out.println("Verify that title is Dashboard");
        Assert.assertEquals("Dashboard",Driver.getDriver().getTitle());

    }



    @When("user logs in as driver")
    public void user_logs_in_as_driver() {
        System.out.println("Login as a driver");
        loginPage.login("user19","UserUser123");
    }
}
