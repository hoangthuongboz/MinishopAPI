using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using DAL;
using DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : BaseController
    {
        [HttpGet]
        public List<Product> Get()
        {
            return app.Product.GetProducts();
        }
        [HttpPost]
        public int Post(Product obj)
        {
            return app.Product.Add(obj);
        }
        [HttpDelete("{p}")]
        public int Delete(int p)
        {
            return app.Product.Delete(p);
        }
        [HttpGet("{id}")]
        public Product Get(int id)
        {
            return app.Product.GetProductById(id);
        }
        [HttpPut("{id}")]
        public int Put(Product obj)
        {
            return app.Product.Edit(obj);
        }

    }
}