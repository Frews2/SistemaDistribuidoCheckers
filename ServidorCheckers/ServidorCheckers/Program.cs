using System;
using System.ServiceModel;

namespace ServidorCheckers
{
    class Program
    {
        protected Program()
        {

        }
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
