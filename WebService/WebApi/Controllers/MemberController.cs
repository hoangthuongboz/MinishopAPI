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
    public class MemberController : BaseController
    {
        [HttpGet]
        public List<Member> Get()
        {
            return app.Member.GetMembers();
        }
        [HttpGet("{id}")]
        public Member Get(long id)
        {
            return app.Member.GetMemberAndRoles(id);
        }
        [HttpPut("{id}")]
        public int Put(MemberInRole obj)
        {
            return app.MemberInRole.Save(obj);
        }
        [HttpPost]
        public int Post(Member obj)
        {
            return app.Member.Add(obj);
        }
        [HttpPut("{username}&{oldpassword}")]
        public int Put(Member obj)
        {
            return app.Member.Update(obj);
        }
    }
}