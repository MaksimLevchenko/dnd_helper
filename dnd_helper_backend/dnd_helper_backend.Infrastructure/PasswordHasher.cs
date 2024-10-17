using System.Text;
using System.Security.Cryptography;

namespace dnd_helper_backend.Infrastructure
{
    public class PasswordHasher: IPasswordHasher
    {
        const string SALT = "t`cc^*Sd9T}'VNpi";
        public string Generate(string pass)
        {
            byte[] hash = SHA256.HashData(Encoding.UTF8.GetBytes(pass + SALT));
            StringBuilder passHash = new StringBuilder();
            foreach (byte b in hash)
            {
                passHash.Append(b.ToString("X2"));
            }

            return passHash.ToString();
        }

        public bool Verify(string pass, string passHash)
        {
            return Generate(pass) == passHash;
        }
    }
}
