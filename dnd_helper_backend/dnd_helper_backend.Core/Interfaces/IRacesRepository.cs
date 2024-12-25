using dnd_helper_backend.Core.Enums;
using dnd_helper_backend.Core.ValueObjects;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IRacesRepository
    {
        Task<Guid> Create(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures);
        Task<Guid> Delete(Guid raceId);
        Task<List<Race>> Get();
        Task<Race> GetByID(Guid raceId);
        Task<Guid> Update(Guid raceId, string name, Attributes attributes, List<Skills> skills, List<SubRace> subRaces, Dictionary<string, string> raceFeatures);
    }
}