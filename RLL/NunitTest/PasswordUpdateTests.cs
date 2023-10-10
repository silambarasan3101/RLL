using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{

    public class PasswordUpdateTests
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString; // Provide a test connection string

        [Test]
        public void UpdatePassword_ValidUserAndPassword_ReturnsTrue()
        {
            // Arrange
            var passwordUpdater = new PasswordUpdater(conStr);
            string userId = "johndoe123";
            string contactNumber = "8338818498";
            string newPassword = "newPassword@123";

            // Act
            bool result = passwordUpdater.UpdatePassword(userId, contactNumber, newPassword);

            // Assert
            Assert.IsTrue(result);
        }
    }
}