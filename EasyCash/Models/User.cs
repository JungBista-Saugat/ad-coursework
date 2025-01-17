using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasyCash.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string PasswordHash { get; set; }
        public DateTime CreatedOn { get; set; }
        public string? Phone { get; set; }
        public string? Address { get; set; }
        public List<Transaction> CashIns { get; set; } = new();
        internal List<Transaction> CashOuts { get; set; } = new();
    }
}