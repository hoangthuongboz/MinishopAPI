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
    public class RoleController : BaseController
    {
        [HttpGet]
        public List<Role> Get()
        {
            return app.Role.GetRoles();
        }
        [HttpPost]
        public int Post(Role obj)
        {
            return app.Role.Add(obj);
        }
        [HttpDelete("{p}")]
        public int Delete(int p)
        {
            return app.Role.Delete(p);
        }
        [HttpGet("{id}")]
        public Role GetRoleById(int id)
        {
            return app.Role.GetRoleById(id);
        }
        [HttpPut("{id}")]
        public int Put(Role obj)
        {
            return app.Role.Edit(obj);
        }
    }
}