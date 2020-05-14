using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CategoryRepository : BaseRepository<Category>
    {
        internal CategoryRepository(IDbConnection connection) : base(connection) { }
        protected override Category Fetch(IDataReader reader)
        {
            return new Category
            {
                Id = (int)reader["CategoryId"],
                Name = (string)reader["CategoryName"],
                Description = (string)reader["Description"]
            };
        }
        static Product FetchProduct(IDataReader reader)
        {
            return new Product
            {
                Id = (int)reader["ProductId"],
                CategoryId = (int)reader["CategoryId"],
                Name = (string)reader["ProductName"],
                Price = (int)reader["Price"],
                Quantity = (short)reader["Quantity"],
                Description = (string)reader["Description"],
                /*ImageUrl = (string)reader["ImageUrl"]*/
                ImageUrl = reader["ImageUrl"] != DBNull.Value ? (string)reader["ImageUrl"] : null
            };
        }
        static List<Product> GetProducts(IDataReader reader)
        {
            List<Product> list = new List<Product>();
            while (reader.Read())
            {
                list.Add(FetchProduct(reader));
            }
            return list;
        }
        public List<Category> GetCategories()
        {
            return Query("GetCategories");
        }
        public int Add(Category obj)
        {
            Parameter[] parameters =
            {
                new Parameter { Name = "@Name", Value = obj.Name, DbType = DbType.String},
                new Parameter { Name = "@Description", Value = obj.Description, DbType = DbType.String}
            };
            return Save("AddCategory", parameters);
            
        }
        public Category GetCategoryById(int id)
        {
            return QueryOne("GetCategoryById", new Parameter { Name = "@Id", Value = id, DbType = DbType.Int32 });
        }
        public int Delete(int id)
        {
            return Save("DeleteCategory", new Parameter { Name = "@Id", Value = id, DbType = DbType.Int32 });
        }
        public int Delete(int[] a)
        {
            return Save(a, "DeleteCategory", new Parameter { Name = "@Id", DbType = DbType.Int32 });
        }
        public int Edit(Category obj)
        {
            Parameter[] parameters =
            {
                new Parameter{ Name = "@Id", Value = obj.Id, DbType = DbType.Int32},
                new Parameter{ Name = "@Name", Value = obj.Name, DbType = DbType.String},
                new Parameter{ Name = "@Description", Value = obj.Description, DbType = DbType.String}
            };
            return Save("EditCategory", parameters);
        }
        public Category GetCategoryDetail(int id)
        {
            using (IDbCommand command = connection.CreateCommand())
            {
                command.CommandText = "GetCategoryDetail";
                command.CommandType = CommandType.StoredProcedure;
                SetParameter(command, new Parameter { Name = "@Id", Value = id, DbType = DbType.Int32 });
                using (IDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Category obj = Fetch(reader);
                        if (reader.NextResult())
                        {
                            obj.Products = GetProducts(reader);
                        }
                        return obj;
                    }
                    return null;
                }
            }
        }
    }
}
