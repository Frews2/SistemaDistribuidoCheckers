using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ServidorCheckers
{
    class Program
    {
        static void Main(string[] args)
        {
            using (ServiceHost host = new ServiceHost(typeof(Contratos.MainService)))
            {
                host.Open();
                Console.WriteLine("Server is running");
                Console.WriteLine();
                Console.ReadLine();
            }
        }
    }
}
