using System.ComponentModel.DataAnnotations;

namespace dnd_helper_backend.Api.Contracts.Users
{
    public record LoginUserRequest(
        [Required] string email,
        [Required] string pass);
}
