using EasyCash.Services;
using Microsoft.Extensions.Logging;

namespace EasyCash
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>() // Set the main application class
                .ConfigureFonts(fonts =>
                {
                    // Add custom fonts
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            // Add Blazor web view support for MAUI
            builder.Services.AddMauiBlazorWebView();

            // Register services
            builder.Services.AddSingleton<UserService>();
            builder.Services.AddScoped<UserService>();
            builder.Services.AddScoped<TransactionService>(); 

#if DEBUG
            // Enable Blazor developer tools and debug logging in DEBUG mode
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

            // Build and return the MAUI application
            return builder.Build();
        }
    }
}