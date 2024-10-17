using dnd_helper_backend.Core.Models;
using Microsoft.AspNetCore.Mvc;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Application.Services;
using dnd_helper_backend.Api.Contracts.Users;
using Microsoft.AspNetCore.Authorization;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace dnd_helper_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUsersService _usersService;

        public UserController(IUsersService usersService)
        {
            _usersService = usersService;
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
        public async Task<ActionResult<Guid>> Register([FromBody] RegisterUserRequest request)
        {
            var userGuid = await _usersService.Register(request.username, request.email, request.pass);

            return Ok(userGuid);
        }

        [Route("Login")]
        [HttpPost]
        public async Task<ActionResult<string>> Login([FromBody] LoginUserRequest request)
        {
            var token = await _usersService.Login(request.email, request.pass);

            return Ok(token);
        }
    }
}
