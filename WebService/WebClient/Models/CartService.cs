using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace WebClient.Models
{
    public class CartService : BaseService
    {
        public int Add(Cart obj)
        {
            return Post<Cart>("cart", obj);
        }
        public List<Cart> GetCarts(long id)
        {
            return Gets<Cart>($"cart/{id}");
        }
        public int Delete(long id, int productid)
        {
            return Delete($"cart/{id}&{productid}");
        }
        public int Edit(Cart obj)
        {
            return Put<Cart>($"cart/{obj.Id}", obj);
        }
    }
}
