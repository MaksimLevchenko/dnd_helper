using dnd_helper_backend.Core.Models;
using dnd_helper_backend.DataAccess.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace dnd_helper_backend.Api.Controllers
{
    [Route("api/[controller]")]
    public class ArmsController:ControllerBase
    {
        private readonly IArmsRepository _armsRepository;
        public ArmsController(IArmsRepository armsRepository)
        {
            _armsRepository = armsRepository;
        }
        [Route("Get")]
        [HttpGet]
        public async Task<ActionResult<List<Arms>>> Get()
        {
            var results = await _armsRepository.Get();
            return Ok(results);
        }

        [Route("GetByID")]
        [HttpGet]
        public async Task<ActionResult<Arms>> GetByID(Guid Id)
        {
            var results = await _armsRepository.GetByID(Id);
            return Ok(results);
        }

        [Route("Create")]
        [HttpPost]
        public async Task<ActionResult<Guid>> Create(string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures)
        {
            var results = await _armsRepository.Create(Guid.NewGuid(), name, isMelee, isSimple, price, damage, damageType, weight, armsFeatures);
            return Ok(results);
        }
        [Route("Update")]
        [HttpPut]
        public async Task<ActionResult<Guid>> Update(Guid id, string name, bool isMelee, bool isSimple, Coins price, string damage, string damageType, double weight, List<string> armsFeatures)
        {
            var results = await _armsRepository.Update(id, name, isMelee, isSimple, price, damage, damageType, weight, armsFeatures);
            return Ok(results);
        }
        [Route("Delete")]
        [HttpDelete]
        public async Task<ActionResult<Guid>> Delete(Guid id)
        {
            var results = await _armsRepository.Delete(id);
            return Ok(results);
        }
    }
}
