using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AppRepository
    {
        IDbConnection connection;
        public AppRepository(IDbConnection connection)
        {
            this.connection = connection;
        }
        CategoryRepository category;
        ProductRepository product;
        RoleRepository role;
        MemberRepository member;
        MemberInRoleRepository memberInRole;
        CartRepository cart;
        public CartRepository Cart
        {
            get
            {
                if(cart is null)
                {
                    cart = new CartRepository(connection);
                }
                return cart;
            }
        }
        public CategoryRepository Category
        {
            get
            {
                if(category is null)
                {
                    category = new CategoryRepository(connection);
                }
                return category;
            }
        }
        public ProductRepository Product
        {
            get
            {
                if(product is null)
                {
                    product = new ProductRepository(connection);
                }
                return product;
            }
        }
        
        public RoleRepository Role
        {
            get
            {
                if(role is null)
                {
                    role = new RoleRepository(connection);
                }
                return role;
            }
        }
        public MemberRepository Member
        {
            get
            {
                if(member is null)
                {
                    member = new MemberRepository(connection);
                }
                return member;
            }
        }
        public MemberInRoleRepository MemberInRole
        {
            get
            {
                if(memberInRole is null)
                {
                    memberInRole = new MemberInRoleRepository(connection);
                }
                return memberInRole;
            }
        }
    }
}
