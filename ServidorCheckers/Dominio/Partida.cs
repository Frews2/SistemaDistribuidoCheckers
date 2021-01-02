using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    class Partida
    {
        public int IdPartida { get; set; }
        public TimeSpan Tiempo{ get; set; }
        public string ModoJuego { get; set; }
        public int Turno { get; set; }
        public int IdGanador { get; set; }
        public int IdPerdedor { get; set; }
    }
}
