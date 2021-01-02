using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Ranking
    {
        public int IdRanking { get; set; }
        public int IdDuenio { get; set; }
        public DateTime FechaRegistracion { get; set; }
        public int NumeroVictorias { get; set; }
        public int PartidasJugadas { get; set; }
        public int Rank { get; set; }
        public int NumeroPerdidas { get; set; }

    }
}
