using dnd_helper_backend.Core.Models;
using Microsoft.AspNetCore.Mvc;
using dnd_helper_backend.DataAccess.Repositories;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace dnd_helper_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUsersRepository _usersRepository;

        public UserController(IUsersRepository userRepository)
        {
            _usersRepository = userRepository;
        }

        [HttpGet]
        public async Task<ActionResult<List<User>>> Get()
        {
            var test = _usersRepository.Get().Result;
            return test;
        }

        [HttpPost]
        public async Task<ActionResult<Guid>> Add([FromBody] User request)
        {
            var newUserGuid = await _usersRepository.Create(new User(
                Guid.NewGuid(),
                request.Username,
                request.Email,
                request.PassHash));

            return newUserGuid;
        }
    }
}
