using System;

namespace EasyCash.Models
{
    public class Transaction
    {
        public int Id { get; set; }
        public int UserId { get; set; } // Link transaction to a user
        public string Title { get; set; } // Title of the transaction
        public string Type { get; set; } // Credit, Debit, or Debt
        public decimal Amount { get; set; } // Total amount
        public string Notes { get; set; } // Additional notes for the transaction
        public DateTime Date { get; set; } // Date of transaction
        public string Tags { get; set; } // Comma-separated tags
        public bool IsDebtCleared { get; set; } = false; // For debt transactions
        public decimal Debit { get; set; } = 0; // Cash out
        public decimal Credit { get; set; } = 0; // Cash in

        // Constructor to ensure consistent initialization for types
        public Transaction()
        {
            Amount = 0;
            Debit = 0;
            Credit = 0;
            IsDebtCleared = false;
        }

    }
}