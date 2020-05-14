using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    //[Route("api/[controller]")]
    [ApiController]
    public class HomeController : BaseController
    {
        //[HttpGet("{id}")]
        [Route("api/home/browser/{id}")]
        public Category Browser(int id)
        {
            return app.Category.GetCategoryDetail(id);
        }
        [Route("api/home/detail/{id}")]
        public Product Detail(int id)
        {
            return app.Product.GetProductsDetail(id);
        }
        [Route("api/home/{id}&{size}")]
        public List<Product> Get(int id, int size)
        {
            return app.Product.GetProductsPagination(id, size);
        }
        [Route("api/home/search/{q}&{id}&{size}")]
        public List<Product> Search(string q, int id, int size)
        {
            return app.Product.SearchProductsPaginationByQ(q, id, size);
        }
    }
}