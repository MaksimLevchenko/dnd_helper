﻿using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.DataAccess.Repositories
{
    public interface IBackgroundsRepository
    {
        Task<Guid> Create(Guid id, string name, List<string> skillProficiencies, string toolProficiencies, string equipment, string description);
        Task<Guid> Delete(Guid id);
        Task<List<Background>> Get();
        Task<Background> GetByID(Guid id);
        Task<Guid> Update(Guid id, string name, List<string> skillProficiencies, string toolProficiencies, string equipment, string description);
    }
}