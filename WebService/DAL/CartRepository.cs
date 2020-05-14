using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CartRepository : BaseRepository<Cart>
    {
        internal CartRepository(IDbConnection connection) : base(connection) { }
        protected override Cart Fetch(IDataReader reader)
        {
            return new Cart
            {
                Id = (long)reader["CartId"],
                ProductId = (int)reader["ProductId"],
                Quantity = (short)reader["Quantity"],
                Price = (int)reader["Price"],
                ProductName = (string)reader["ProductName"],
                ImageUrl = reader["ImageUrl"] != DBNull.Value ? (string)reader["ImageUrl"] : null
            };
        }
        public int Add(Cart obj)
        {
            Parameter[] parameters =
            {
                new Parameter { Name = "@Id", Value = obj.Id, DbType = DbType.Int64},
                new Parameter { Name = "@ProductId", Value = obj.ProductId, DbType = DbType.Int32},
                new Parameter { Name = "@Quantity", Value = obj.Quantity, DbType = DbType.Int16}
            };
            return Save("AddCart", parameters);
        }
        public List<Cart> GetCarts(long id)
        {
            return Query("GetCarts", new Parameter { Name = "@Id", Value = id, DbType = DbType.Int64 });    
        }
        public int Delete(long id, int productid)
        {
            Parameter[] parameters =
            {
                new Parameter { Name = "@Id", Value = id, DbType = DbType.Int64},
                new Parameter { Name = "@ProductId", Value = productid, DbType = DbType.Int32}
            };
            return Save("DeleteCart", parameters);
        }
        public int Edit(Cart obj)
        {
            Parameter[] parameters =
            {
                new Parameter { Name = "@Id", Value = obj.Id, DbType = DbType.Int64},
                new Parameter { Name = "@ProductId", Value = obj.ProductId, DbType = DbType.Int32},
                new Parameter { Name = "@Quantity", Value = obj.Quantity, DbType = DbType.Int16}
            };
            return Save("EditCart", parameters);
        }
    }
}
