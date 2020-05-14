using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartController : BaseController
    {
        [HttpGet("{id}")]
        public List<Cart> Get(long id)
        {
            return app.Cart.GetCarts(id);
        }
        [HttpPost]
        public int Post(Cart obj)
        {
            return app.Cart.Add(obj);
        }
        [HttpDelete("{p}&{productid}")]
        public int Delete(long p, int productid)
        {
            return app.Cart.Delete(p, productid);
        }
        [HttpPut("{id}")]
        public int Put(Cart obj)
        {
            return app.Cart.Edit(obj);
        }
    }
}