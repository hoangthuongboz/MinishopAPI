using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Cart
    {
        public long Id { get; set; }
        public int ProductId { get; set; }
        public short Quantity { get; set; }

        //them vao de hien thi
        public string ProductName { get; set; }
        public string ImageUrl { get; set; }
        public int Price { get; set; }
    }
}
