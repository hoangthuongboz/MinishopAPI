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
    public class CategoryController : BaseController
    {
        [HttpGet]
        public List<Category> Get()
        {
            return app.Category.GetCategories();
        }
        [HttpGet("{id}")]
        public Category Get(int id)
        {
            return app.Category.GetCategoryById(id);
        }
        [HttpPost]
        public int Post(Category obj)
        {
            return app.Category.Add(obj);
        }
        [HttpDelete("{p}")]
        public int Delete(int p)
        {
            return app.Category.Delete(p);
        }
        [HttpPut("{id}")]
        public int Put(Category obj)
        {
            return app.Category.Edit(obj);
        }

    }
}