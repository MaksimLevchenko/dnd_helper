namespace dnd_helper_backend.Api.Contracts.Users
{
    public record RegisterUserRequest(string username, string email, string pass);
}
