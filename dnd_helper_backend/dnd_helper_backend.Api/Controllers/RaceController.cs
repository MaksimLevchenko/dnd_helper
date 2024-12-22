using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.Models;
using dnd_helper_backend.Core.ValueObjects;
using dnd_helper_backend.DataAccess.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace dnd_helper_backend.Api.Controllers
{
    [Route("api/[controller]")]
    public class RaceController : ControllerBase
    {
        private readonly IRacesRepository _racesRepository;
        public RaceController(IRacesRepository racesRepository)
        {
            _racesRepository = racesRepository;
        }
        [Route("Get")]
        [HttpGet]
        public async Task<ActionResult<List<Race>>> Get()
        {
            var results = await _racesRepository.Get();
            return Ok(results);
        }

        [Route("GetByID")]
        [HttpGet]
        public async Task<ActionResult<Race>> GetByID(Guid raceId)
        {
            var results = await _racesRepository.GetByID(raceId);
            return Ok(results);
        }

        [Route("Create")]
        [HttpPost]
        public async Task<ActionResult<Guid>> Create(string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures)
        {
            var results = await _racesRepository.Create(Guid.NewGuid(), name, attributes, skills, subRaces, raceFeatures);
            return Ok(results);
        }
        [Route("Update")]
        [HttpPut]
        public async Task<ActionResult<Guid>> Update(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures)
        {
            var results = await _racesRepository.Update(raceId, name, attributes, skills, subRaces, raceFeatures);
            return Ok(results);
        }
        [Route("Delete")]
        [HttpDelete]
        public async Task<ActionResult<Guid>> Delete(Guid raceId)
        {
            var results = await _racesRepository.Delete(raceId);
            return Ok(results);
        }

    }
}
