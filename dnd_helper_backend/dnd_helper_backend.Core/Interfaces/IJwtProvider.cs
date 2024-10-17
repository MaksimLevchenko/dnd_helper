using dnd_helper_backend.Core.Models;

namespace dnd_helper_backend.Infrastructure.Jwt
{
    public interface IJwtProvider
    {
        string GenerateToken(User user);
    }
}