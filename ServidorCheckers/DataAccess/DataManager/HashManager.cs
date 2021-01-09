using System;

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
