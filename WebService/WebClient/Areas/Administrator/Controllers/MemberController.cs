using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using DTO;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using WebClient.Models;

namespace WebClient.Areas.Administrator.Controllers
{
    [Authorize(Roles = "Administrator")]
    [Area("administrator")]
    public class MemberController : Controller
    {
        AppService service = new AppService();
        public IActionResult Index()
        {
            return View(service.Member.GetMembers());
        }
        public IActionResult Role(long id)
        {
            return View(service.Member.GetMemberAndRoles(id));
        }
        public IActionResult Edit(MemberInRole obj)
        {
            return Json(service.Member.Edit(obj));
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Member obj)
        {
            if (ModelState.IsValid)
            {
                obj.Id = Helper.RandomLong();
                int ret = service.Member.Add(obj);
                string[] error =
                {
                    "Username Đã tồn tại!",
                    "Đăng kí bị lỗi"
                };
                if (ret >= 2)
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    //ModelState.AddModelError("error", "Insert Failed" );//error[ret]
                    ModelState.AddModelError("error", error[ret]);
                }
            }
            return View(obj);
        }
    }
}