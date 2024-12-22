using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace dnd_helper_backend.Api.Controllers
{
    [Route("api/[controller]")]
    public class BackgroundController:ControllerBase
    {
        private readonly IBackgroundsRepository _backgroundRepository;
        public BackgroundController(IBackgroundsRepository backgroundsRepository)
        {
            _backgroundRepository = backgroundsRepository;
        }
        [Route("Get")]
        [HttpGet]
        public async Task<ActionResult<List<Background>>> Get()
        {
            var results = await _backgroundRepository.Get();
            return Ok(results);
        }

        [Route("GetByID")]
        [HttpGet]
        public async Task<ActionResult<Background>> GetByID(Guid Id)
        {
            var results = await _backgroundRepository.GetByID(Id);
            return Ok(results);
        }

        [Route("Create")]
        [HttpPost]
        public async Task<ActionResult<Guid>> Create(string name, List<string> skillProficiencies, string toolProficiencies, string equipment, string description)
        {
            var results = await _backgroundRepository.Create(Guid.NewGuid(), name, skillProficiencies, toolProficiencies, equipment, description);
            return Ok(results);
        }
        [Route("Update")]
        [HttpPut]
        public async Task<ActionResult<Guid>> Update(Guid id, string name, List<string> skillProficiencies, string toolProficiencies, string equipment, string description)
        {
            var results = await _backgroundRepository.Update(id, name, skillProficiencies, toolProficiencies, equipment, description);
            return Ok(results);
        }
        [Route("Delete")]
        [HttpDelete]
        public async Task<ActionResult<Guid>> Delete(Guid id)
        {
            var results = await _backgroundRepository.Delete(id);
            return Ok(results);
        }
    }
}
