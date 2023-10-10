using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;

namespace RLL.NunitTest
{
    [TestFixture]
    public class UserRegistrationTests
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString; // Provide a test connection string

        [Test]
        public void RegisterUser_SuccessfulRegistration_RedirectsToUserLogin()
        {
            // Arrange
            var registrationPage = new UserRegistrationPage(conStr);
            string firstName = "John";
            string lastName = "Doe";
            string contactNumber = "8338818397";
            string email = "john.doe@example.com";
            DateTime dob = DateTime.Now;
            string userId = "johndoe123";
            string password = "john@123";
            string confirmPassword = "john@123";

            // Act
            string result = registrationPage.RegisterUser(firstName, lastName, contactNumber, email, dob, userId, password, confirmPassword);

            // Assert
            Assert.AreEqual("User Registration Successful", result);
            Assert.AreEqual("UserLogin.aspx", registrationPage.RedirectedPage);
        }
    }
  
}