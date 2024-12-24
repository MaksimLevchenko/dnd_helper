using dnd_helper_backend.Core.Models;
using Microsoft.AspNetCore.Mvc;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Application.Services;
using dnd_helper_backend.Api.Contracts.Users;
using Microsoft.AspNetCore.Authorization;
using Microsoft.EntityFrameworkCore;
using System.IO;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace dnd_helper_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUsersService _usersService;
        IWebHostEnvironment _appEnvironment;

        public UserController(IUsersService usersService, IWebHostEnvironment appEnvironment)
        {
            _usersService = usersService;
            _appEnvironment = appEnvironment;
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<List<User>>> GetUsers()
        {
            var test = await _usersService.GetAllUsers();
            return Ok(test);
        }

        [Route("Register")]
        [HttpPost]
        public async Task<ActionResult<string>> Register([FromBody] RegisterUserRequest request)
        {
            var userGuid = await _usersService.Register(request.username, request.email, request.pass);

            var token = await _usersService.Login(request.email, request.pass);

            return Ok(token);
        }

        [Route("Login")]
        [HttpPost]
        public async Task<ActionResult<string>> Login([FromBody] LoginUserRequest request)
        {
            var token = await _usersService.Login(request.email, request.pass);

            return Ok(token);
        }

        [Route("ImageDownload")]
        [HttpPost]
        public async Task<ActionResult> ImageDownload(IFormFile uploadedFile)
        {
            if (uploadedFile != null)
            {
                // путь к папке Files
                string path = "../Images/" + uploadedFile.FileName;
                // сохраняем файл в папку Files в каталоге wwwroot
                using (var fileStream = new FileStream(_appEnvironment.WebRootPath + path, FileMode.Create))
                {
                    await uploadedFile.CopyToAsync(fileStream);
                }
                Image file = new Image(path);
                //_context.Files.Add(file);
                //_context.SaveChanges();
            }

            return Ok();
        }
    }
}
