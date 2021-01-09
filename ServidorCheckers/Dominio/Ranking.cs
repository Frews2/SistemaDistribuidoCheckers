using System;

namespace Dominio
{
    public class Ranking
    {
        public int IdRanking { get; set; }
        public Jugador Duenio { get; set; }
        public DateTime FechaRegistracion { get; set; }
        public int NumeroVictorias { get; set; }
        public int PartidasJugadas { get; set; }
        public int Rank { get; set; }
        public int NumeroPerdidas { get; set; }

    }
}
