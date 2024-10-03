using dnd_helper_backend.Models;
using dnd_helper_backend.Repositories;
using Microsoft.EntityFrameworkCore;



var builder = WebApplication.CreateBuilder(args);
var configuration = builder.Configuration;
Console.WriteLine(configuration.GetConnectionString(nameof(DndHelperDbContext)));
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

builder.Services.AddScoped<IUserRepository, UserRepository>();

var app = builder.Build();

// Configure the HTTP request pipeline.

    app.UseSwagger();
    app.UseSwaggerUI();


//app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();