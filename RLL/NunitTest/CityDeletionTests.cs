using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace RLL.NunitTest
{
    public class CityDeletionTests
    {
        string conStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString; // Provide a test connection string

        [Test]
        public void DeleteCity_ExistingCity_DeletesSuccessfully()
        {
            // Arrange
            var cityDeleter = new CityDeleter(conStr);
            string cityNameToDelete = "Chennai";

            // Act
            string resultMessage = cityDeleter.DeleteCity(cityNameToDelete);

            // Assert
            Assert.AreEqual("City deleted successfully.", resultMessage);
        }

        [Test]
        public void DeleteCity_NonExistingCity_ReturnsNotFoundMessage()
        {
            // Arrange
            var cityDeleter = new CityDeleter(conStr);
            string nonExistingCityName = "NonExistingCity";

            // Act
            string resultMessage = cityDeleter.DeleteCity(nonExistingCityName);

            // Assert
            Assert.AreEqual("City not found or not deleted.", resultMessage);
        }
    }
}