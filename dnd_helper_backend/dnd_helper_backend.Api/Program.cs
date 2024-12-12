using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.DataAccess;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Application.Services;
using dnd_helper_backend.Infrastructure;
using dnd_helper_backend.Infrastructure.Jwt;
using dnd_helper_backend.Api.Extensions;
using System.Threading.RateLimiting;
using Microsoft.Extensions.Options;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);
var configuration = builder.Configuration;
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(options =>
{
    options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Auth",
        In = ParameterLocation.Header,
        Scheme = "Bearer"
    });
    options.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                },
                Scheme = "oauth2",
                Name = "Bearer",
                In = ParameterLocation.Header,
            },
            new List<string>()
        }


    });
});

builder.Services.AddDbContext<DndHelperDbContext>(
    options =>
    {
        options.UseNpgsql(configuration.GetConnectionString(nameof(DndHelperDbContext)));
    });

builder.Services.AddScoped<IUsersRepository, UsersRepository>();
builder.Services.AddScoped<IArmorRepository, ArmorRepository>();
builder.Services.AddScoped<IRacesRepository, RacesRepository>();
builder.Services.AddScoped<IUsersService, UsersService>();
builder.Services.AddScoped<IJwtProvider, JwtProvider>();
builder.Services.AddScoped<IPasswordHasher, PasswordHasher>();
builder.Services.Configure<JwtOptions>(configuration.GetSection(nameof(JwtOptions)));
builder.Services.AddApiAuthentication(configuration);



builder.WebHost.ConfigureKestrel(serverOptions =>
{
    serverOptions.ListenAnyIP(5005, listenOptions =>
    {
        listenOptions.UseHttps();
    });
});
builder.WebHost.UseKestrel();


var app = builder.Build();

// Configure the HTTP request pipeline.

    app.UseSwagger();
    app.UseSwaggerUI();


//app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();



app.Run();