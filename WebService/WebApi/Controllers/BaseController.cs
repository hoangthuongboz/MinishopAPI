using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using DAL;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace WebApi.Controllers
{
    public class BaseController : Controller
    {
        protected AppRepository app;
        public BaseController(IDbConnection connection)
        {
            connection.Open();
            app = new AppRepository(connection);
            /*try
            {
                connection.Open();
                app = new AppRepository(connection);
            }
            finally
            {
                connection.Close();
            }*/

        }
        public BaseController()
        {
            IConfigurationRoot configuration = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            IDbConnection connection = new SqlConnection(configuration.GetConnectionString("shop"));
            /*try
            {
                connection.Open();
                app = new AppRepository(connection);
            }
            finally
            {
                connection.Close();
            }*/
            connection.Open();
            app = new AppRepository(connection);
        }
    }
}