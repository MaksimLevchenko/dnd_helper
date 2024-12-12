using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IRacesRepository
    {
        Task<Guid> Create(Guid raceId, string name, Dictionary<string, int> attributes, List<string> skills, List<string> subRaces, Dictionary<string, string> raceFeatures);
        Task<Guid> Delete(Guid raceId);
        Task<List<Race>> Get();
        Task<Race> GetByID(Guid raceId);
        Task<Guid> Update(Guid raceId, string name, Dictionary<string, int> attributes, List<string> skills, List<string> subRaces, Dictionary<string, string> raceFeatures);
    }
}