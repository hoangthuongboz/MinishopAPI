using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DTO;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using WebClient.Models;

namespace WebClient.Controllers
{
    public class CartController : BaseController
    {
        public IActionResult Index()
        {
            return View(service.Cart.GetCarts(CartId));
        }
        [HttpPost]
        public IActionResult Create(Cart obj)
        {
            obj.Id = CartId;
            service.Cart.Add(obj);
            return RedirectToAction("Index");
        }
        public IActionResult Delete(int id)
        {
            if(service.Cart.Delete(CartId, id) > 0)
            {
                return RedirectToAction("Index");
            }
            ModelState.AddModelError("Error", "Delete failed");
            return View();
        }
        [HttpPost]
        public IActionResult Edit(Cart obj)
        {
            obj.Id = CartId;
            return Json(service.Cart.Edit(obj));
        }
    }
}