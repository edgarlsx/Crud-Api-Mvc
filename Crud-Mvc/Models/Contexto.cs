using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Crud_Mvc.Models
{
    public class Contexto : DbContext
    {

        public DbSet<Pessoa> Pessoas { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(connectionString: @"Data Source=HMDB0007;Initial Catalog=dbTest;User ID=test.femsa;Password=p@$$w0rd;Integrated Security=True;");
        }

    }
}
