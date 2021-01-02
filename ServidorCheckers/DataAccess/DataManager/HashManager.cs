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
        byte[] transformSource;
        byte[] transformHash;

        public HashManager()
        {
            transformSource = null;
            transformHash = null;
        }

        public String TextToHash(string sourceData)
        {
            MD5 md5Code = MD5.Create();

            transformSource = Encoding.ASCII.GetBytes(sourceData);
            transformHash = md5Code.ComputeHash(transformSource);

            StringBuilder hashChain = new StringBuilder();

            foreach (var letter in transformHash)
            {
                hashChain.Append(letter.ToString("X2"));
            }

            return hashChain.ToString();
        }

    }
}
