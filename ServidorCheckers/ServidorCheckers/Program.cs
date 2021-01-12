/*
 Date: 25/11/2020
 Author(s): Cesar Sergio Martinez Palacions y Ricardo Moguel Sanchez
*/
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
