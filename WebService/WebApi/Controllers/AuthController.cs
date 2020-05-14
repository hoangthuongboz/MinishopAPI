using System;
using System.Collections.Generic;
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
    public class AuthController : BaseController
    {
        [HttpGet]
        public List<Member> Get()
        {
            List<Member> list = new List<Member>();
            return list;
        }
        [HttpGet("{usr}&{pwd}")]
        //[Route("api/auth/{usr}${pwd}")]
        public Member Get(string usr, string pwd)
        {
            return app.Member.SignIn(usr,pwd);
        }
        //[HttpPost]
        //public int Post(Member obj)
        //{
        //    return app.Member.Add(obj);
        //}
        //[HttpGet("{id}")]
        //public Member GetMemberById(long id)
        //{
        //    return app.Member.GetMemberById(id);
        //}
        //[HttpPut("{id}")]
        //public int Put(Member obj)
        //{
        //    return app.Member.Update(obj);
        //}
    }
}