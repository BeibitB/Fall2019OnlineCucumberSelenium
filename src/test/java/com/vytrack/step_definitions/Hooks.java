package com.vytrack.step_definitions;

import com.vytrack.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {


    @Before
    public void setup(){
        System.out.println("Test setup");
        Driver.getDriver().manage().window().maximize();
    }


    @Before("@driver")
    public void specialSetup(){
        System.out.println("Driver setup");
    }


    @After("@driver")
    public void SpecialTeardown(){
        System.out.println("Driver teardown");
    }


    @After
    public void teardown(){
        System.out.println("Cleanup");
       Driver.closeDriver();
    }
}
