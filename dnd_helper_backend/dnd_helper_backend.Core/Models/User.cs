namespace dnd_helper_backend.Core.Models
{
    public class User
    {
        public User(Guid userId, string userName, string email, string passHash)
        {
            Id = userId;
            Username = userName;
            Email = email;
            PassHash = passHash;
        }

        public Guid Id { get; }
        public string Username { get; }
        public string Email { get; }
        public string PassHash { get; }

        public static (User User, string Error) Create(Guid userId, string userName, string email, string passHash)
        {
            string error = string.Empty;
            var User = new User(userId, userName, email, passHash);

            return (User, error);
        }
    }
}
