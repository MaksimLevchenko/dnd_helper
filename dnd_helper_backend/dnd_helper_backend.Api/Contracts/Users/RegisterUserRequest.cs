using System.ComponentModel.DataAnnotations;

namespace dnd_helper_backend.Api.Contracts.Users
{
    public record RegisterUserRequest(
        [Required] string username,
        [Required] string email,
        [Required] string pass);
}
