using System.Text.Json;
using EasyCash.Models;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using EasyCash.Services;

public class UserService
{
    private static readonly string DesktopPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
    private static readonly string FolderPath = Path.Combine(DesktopPath, "EasyCashData");
    private static readonly string FilePath = Path.Combine(FolderPath, "users.json");
    public User? CurrentUser { get; private set; }

    private readonly TransactionService _transactionService;

    public UserService(TransactionService transactionService)
    {
        _transactionService = transactionService;
    }

    // Clear the previous session (clear cached transactions)
    private void ClearPreviousSession()
    {
        if (CurrentUser != null)
        {
            _transactionService.ClearCache(CurrentUser.Id); // Pass the current user's ID to ClearCache
        }
    }

    // Load users from the JSON file
    public List<User> LoadUsers()
    {
        if (!File.Exists(FilePath))
            return new List<User>();

        try
        {
            var json = File.ReadAllText(FilePath);
            Console.WriteLine($"Loaded users JSON: {json}");
            return JsonSerializer.Deserialize<List<User>>(json) ?? new List<User>();
        }
        catch (JsonException ex)
        {
            Console.WriteLine($"JSON Error: {ex.Message}");
            return new List<User>();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
            return new List<User>();
        }
    }

    public void SaveUsers(List<User> users)
    {
        EnsureFolderExists();
        try
        {
            var json = JsonSerializer.Serialize(users, new JsonSerializerOptions { WriteIndented = true });
            File.WriteAllText(FilePath, json);
            Console.WriteLine($"Saved users JSON: {json}");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error saving users: {ex.Message}");
        }
    }

    public string HashPassword(string password)
    {
        using var sha256 = SHA256.Create();
        var bytes = Encoding.UTF8.GetBytes(password);
        var hash = sha256.ComputeHash(bytes);
        return Convert.ToBase64String(hash);
    }

    public bool ValidatePassword(string inputPassword, string storedPassword)
    {
        var hashedInputPassword = HashPassword(inputPassword);
        return hashedInputPassword == storedPassword;
    }

    public void Login(User user)
    {
        CurrentUser = user; // Set the logged-in user
        ClearPreviousSession(); // Clear old user data
    }
    
    // Clear the current user (logout)
    public void Logout()
    {
        CurrentUser = null;
    }


    // Ensure the data folder exists
    private void EnsureFolderExists()
    {
        if (!Directory.Exists(FolderPath))
        {
            Directory.CreateDirectory(FolderPath);
        }
    }
}
