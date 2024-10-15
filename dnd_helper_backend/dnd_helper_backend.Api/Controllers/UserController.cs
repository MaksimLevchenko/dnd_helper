using dnd_helper_backend.Core.Models;
using Microsoft.AspNetCore.Mvc;
using dnd_helper_backend.DataAccess.Repositories;
using dnd_helper_backend.Application.Services;

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

        [HttpGet]
        public async Task<ActionResult<List<User>>> GetUsers()
        {
            var test = _usersService.GetAllUsers().Result;
            return Ok(test);
        }

        [HttpPost]
        public async Task<ActionResult<Guid>> AddUser([FromBody] User request)
        {
            var newUserGuid = await _usersService.Registration(new User(
                Guid.NewGuid(),
                request.Username,
                request.Email,
                _usersService.Hash(request.PassHash)));

            return Ok(newUserGuid);
        }
    }
}
