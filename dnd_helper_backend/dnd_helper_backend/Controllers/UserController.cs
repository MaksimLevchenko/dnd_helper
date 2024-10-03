using dnd_helper_backend.Models;
using dnd_helper_backend.Repositories;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace dnd_helper_backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserRepository _userRepository;

        public UserController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpGet]
        public async Task<ActionResult<List<User>>> Get()
        {
            var test = _userRepository.Get().Result;
            return test;
        }

        [HttpPost]
        public async Task<ActionResult<Guid>> Add([FromBody] User request)
        {
            var newUserGuid = await _userRepository.Create(
                Guid.NewGuid(),
                request.UserName,
                request.Email,
                request.passHash);

            return newUserGuid;
        }

        
    }
}
