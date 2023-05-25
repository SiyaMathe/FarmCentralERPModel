using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace ABCSAMPLE
{
    public class Utility

    {
        public static string HashPassword(string password)
        {
            byte[] hash;
            using (var sha1 = new SHA1CryptoServiceProvider())
            {
                hash = sha1.ComputeHash(System.Text.Encoding.ASCII.GetBytes(password));
            }
            var hs = new StringBuilder();
            foreach (byte b in hash) hs.AppendFormat("{0:x2}", b);

            return hs.ToString();
        }


    }
}