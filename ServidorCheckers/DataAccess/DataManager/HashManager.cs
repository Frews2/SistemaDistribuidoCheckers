using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class HashManager
    {
        public HashManager()
        {
        }

        public String TextToHash(string sourceData)
        {
            return BCrypt.Net.BCrypt.HashPassword(sourceData);
        }

        public static bool CompareHash(string inputText, string hashText)
        {
            bool correctPassword = false;
            if (BCrypt.Net.BCrypt.Verify(inputText, hashText))
            {
                correctPassword = true;
            }
            return correctPassword;
        }

    }
}
