using System;
using System.Collections.Generic;
using System.Linq;
using EasyCash.Models;

namespace EasyCash.Services
{
    public class TransactionService
    {
        // Dictionary to store transactions for each user by userId
        private readonly Dictionary<int, List<Transaction>> _userTransactions = new();

        // Constructor
        public TransactionService()
        {
            _userTransactions = new Dictionary<int, List<Transaction>>();
        }

        // Method to clear transactions for a specific user (takes userId as parameter)
        public void ClearCache(int userId)
        {
            if (_userTransactions.ContainsKey(userId))
            {
                _userTransactions[userId].Clear(); // Clear the list of transactions for the specified user
                Console.WriteLine($"Transactions cleared for user {userId}");
            }
            else
            {
                Console.WriteLine($"No transactions found for user {userId}");
            }
        }

        // Method to get transactions for a specific user (takes userId as parameter)
        public List<Transaction> GetTransactions(int userId)
        {
            return _userTransactions.ContainsKey(userId) ? _userTransactions[userId] : new List<Transaction>();
        }

        // Method to add a transaction for a specific user (takes userId as parameter)
        public void AddTransaction(int userId, Transaction transaction)
        {
            if (!_userTransactions.ContainsKey(userId))
            {
                _userTransactions[userId] = new List<Transaction>();
            }

            _userTransactions[userId].Add(transaction);
        }

        // Method to calculate balance for a specific user (takes userId as parameter)
        public decimal CalculateBalance(int userId)
        {
            var transactions = GetTransactions(userId);

            return transactions.Where(t => t.Type == "Credit").Sum(t => t.Amount) -
                   transactions.Where(t => t.Type == "Debit").Sum(t => t.Amount);
        }

        // Method to calculate pending debts for a specific user (takes userId as parameter)
        public decimal CalculatePendingDebts(int userId)
        {
            var transactions = GetTransactions(userId);

            return transactions.Where(t => t.Type == "Debt" && !t.IsDebtCleared).Sum(t => t.Amount);
        }
    }
}
