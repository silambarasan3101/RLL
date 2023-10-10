using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class UserProfileRetrievalTests
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;// Provide a test connection string

        [Test]
        public void RetrieveUserProfile_ValidUserId_PopulatesFields()
        {
            // Arrange
            var userProfileRetriever = new UserProfileRetriever(conStr);
            string testUserId = "johndoe123";

            // Act
            userProfileRetriever.RetrieveUserProfile(testUserId);

            // Assert
            Assert.AreEqual("John", userProfileRetriever.FirstName);
            Assert.AreEqual("Doe", userProfileRetriever.LastName);
            Assert.AreEqual("8338818498", userProfileRetriever.ContactNumber);
            Assert.AreEqual("john.doe@example.com", userProfileRetriever.Email);
            Assert.AreEqual("johndoe123", userProfileRetriever.UserId);
            Assert.AreEqual("newPassword@123", userProfileRetriever.Password);
        }
    }
}