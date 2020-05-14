using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using DTO;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using WebClient.Models;

namespace WebClient.Areas.Administrator.Controllers
{
    //attribute
    [Area("administrator")]
    public class CategoryController : Controller
    {
        CategoryService service = new CategoryService();
        public IActionResult Index()
        {
            return View(service.GetCategories());
            /*using(HttpClient client=new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44337/api/");
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage responseMessage = client.GetAsync("category").Result;
                if (responseMessage.IsSuccessStatusCode)//200
                {
                    return View(responseMessage.Content.ReadAsAsync<List<Category>>().Result);
                }
            }
            return View();*/
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(Category obj)
        {
            if (service.Add(obj) > 0)
            {
                return RedirectToAction("Index");
            }
            ModelState.AddModelError("Error", "Insert Failed");
            return View(obj);
        }
        public IActionResult Delete(int id)
        {
            if (service.Delete(id) > 0)
            {
                return RedirectToAction("Index");
            }
            ModelState.AddModelError("Error", "Delete Failed");
            return View();
            /*using(HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44337/api/");
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage responseMessage = client.DeleteAsync($"category/{id}").Result;
                if (responseMessage.IsSuccessStatusCode)
                {
                    int ret = responseMessage.Content.ReadAsAsync<int>().Result;
                    if (ret > 0)
                    {
                        return RedirectToAction("Index");
                    }
                    ModelState.AddModelError("Error:", "Insert Failed");
                }
                return View();
            }*/
        }
        public IActionResult Edit(int id)
        {
            return View(service.GetCategoryById(id));
        }
        [HttpPost]
        public IActionResult Edit(Category obj)
        {
            if (service.Edit(obj) > 0)
            {
                return RedirectToAction("Index");
            }
            ModelState.AddModelError("error", "Edit Failed");
            return View(obj);
            /*using(HttpClient client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:44337/api/");
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage responseMessage = client.PutAsync<Category>($"category/{id}", obj, new JsonMediaTypeFormatter()).Result;
                if (responseMessage.IsSuccessStatusCode)
                {
                    int ret = responseMessage.Content.ReadAsAsync<int>().Result;
                    if (ret > 0)
                    {
                        return RedirectToAction("Index");
                    }
                    ModelState.AddModelError("Error:", "Edit Failed");
                }
                return View(obj);
            }*/
        }
    }
}