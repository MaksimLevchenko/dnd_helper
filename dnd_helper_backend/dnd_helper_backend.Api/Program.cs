using Microsoft.EntityFrameworkCore;
using dnd_helper_backend.DataAccess;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Application.Services;
using dnd_helper_backend.Infrastructure;

var builder = WebApplication.CreateBuilder(args);
var configuration = builder.Configuration;
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<DndHelperDbContext>(
    options =>
    {
        options.UseNpgsql(configuration.GetConnectionString(nameof(DndHelperDbContext)));
    });

builder.Services.AddScoped<IUsersRepository, UsersRepository>();
builder.Services.AddScoped<IUsersService, UsersService>();
builder.Services.AddScoped<IPasswordHasher, PasswordHasher>();

var app = builder.Build();

// Configure the HTTP request pipeline.

    app.UseSwagger();
    app.UseSwaggerUI();


//app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();