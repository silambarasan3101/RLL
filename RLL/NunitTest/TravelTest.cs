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
    public class TravelTest
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        [Test]
        public void AuthenticateAdmin_ValidCredentials_ReturnsTrue()
        {
            // Arrange
            // Set up a test user in your test database
            string testUsername = "testUser";
            string testPassword = "testPassword";
            CreateTestUser(testUsername, testPassword);

            // Create an instance of AuthenticationHandler with the test connection string
            var handler = new AuthenticationHandler(conStr);

            // Act
            bool isAuthenticated = handler.AuthenticateAdmin(testUsername, testPassword, out string authenticatedUsername);

            // Assert
            Assert.IsTrue(isAuthenticated);
            Assert.AreEqual(testUsername, authenticatedUsername);
            // Add more assertions as needed

            // Clean up: Remove the test user from the database
            RemoveTestUser(testUsername);
        }

        private void CreateTestUser(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                using (SqlCommand cmd = new SqlCommand("INSERT INTO AdminInfo (UserName, Password) VALUES (@username, @password)", con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void RemoveTestUser(string username)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                using (SqlCommand cmd = new SqlCommand("DELETE FROM AdminInfo WHERE UserName = @username", con))
                {
                    cmd.Parameters.AddWithValue("@username", username);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }

}