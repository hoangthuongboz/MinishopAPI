using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebClient.Models
{
    public class AppService
    {
        CategoryService category;
        ProductService product;
        RoleService role;
        MemberService member;
        CartService cart;
        public CartService Cart
        {
            get
            {
                if(cart is null)
                {
                    cart = new CartService();
                }
                return cart;
            }
        }
        public CategoryService Category
        {
            get
            {
                if(category is null)
                {
                    category = new CategoryService();
                }
                return category;
            }
        }
        public ProductService Product
        {
            get
            {
                if(product is null)
                {
                    product = new ProductService();
                }
                return product;
            }
        }
        public RoleService Role
        {
            get
            {
                if(role is null)
                {
                    role = new RoleService();
                }
                return role;
            }
        }
        public MemberService Member
        {
            get
            {
                if(member is null)
                {
                    member = new MemberService();
                }
                return member;
            }
        }
    }
}
