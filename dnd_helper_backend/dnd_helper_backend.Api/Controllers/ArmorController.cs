//using dnd_helper_backend.Api.Contracts.Users;
//using dnd_helper_backend.Core.Models;
//using dnd_helper_backend.Core.ValueObjects;
//using dnd_helper_backend.DataAccess.Repositories;
//using Microsoft.AspNetCore.Mvc;
//namespace dnd_helper_backend.Api.Controllers
//{
//    [Route("api/[controller]")]
//    [ApiController]
//    public class ArmorController: ControllerBase
//    {
//        private readonly IArmorRepository _armorRepository;

//        public ArmorController(IArmorRepository armorRepository)
//        {
//            _armorRepository = armorRepository;
//        }

//        [Route("Get")]
//        [HttpGet]
//        public async Task<ActionResult<List<Armor>>> Get()
//        {
//            var results = await _armorRepository.Get();
//            return Ok(results);
//        }

//        [Route("GetByID")]
//        [HttpGet]
//        public async Task<ActionResult<Armor>> GetByID(Guid armorId)
//        {
//            var results = await _armorRepository.GetByID(armorId);
//            return Ok(results);
//        }

//        [Route("Create")]
//        [HttpPost]
//        public async Task<ActionResult<Guid>> Create(string name, int armorClass, bool grantsDexerityBonus, int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage, int minStrength, string armorType)
//        {
//            var results = await _armorRepository.Create(Guid.NewGuid(), name, armorClass, grantsDexerityBonus, maxDexterityBonus, weight, price, stelsDisadvantage, minStrength, armorType);
//            return Ok(results);
//        }
//        [Route("Update")]
//        [HttpPut]
//        public async Task<ActionResult<Guid>> Update(Guid armorId, string name, int armorClass, bool grantsDexerityBonus, int maxDexterityBonus, int weight, Coins price, bool stelsDisadvantage, int minStrength, string armorType)
//        {
//            var results = await _armorRepository.Update(armorId, name, armorClass, grantsDexerityBonus, maxDexterityBonus, weight, price, stelsDisadvantage, minStrength, armorType);
//            return Ok(results);
//        }
//        [Route("Delete")]
//        [HttpDelete]
//        public async Task<ActionResult<Guid>> Delete(Guid armorId)
//        {
//            var results = await _armorRepository.Delete(armorId);
//            return Ok(results);
//        }
//    }
//}
