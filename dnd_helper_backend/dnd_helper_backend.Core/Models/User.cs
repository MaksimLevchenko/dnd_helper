namespace dnd_helper_backend.Core.Models
{
    public class User
    {
        public User(Guid id, string userName, string email, string passHash)
        {
            Id = id;
            Username = userName;
            Email = email;
            PassHash = passHash;
        }

        public Guid Id { get; }
        public string Username { get; }
        public string Email { get; }
        public string PassHash { get; }

        public static (User User, string Error) Create(Guid id, string userName, string email, string passHash)
        {
            string error = string.Empty;
            var User = new User(id, userName, email, passHash);

            return (User, error);
        }
    }
}
