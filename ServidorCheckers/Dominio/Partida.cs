using System;

namespace Dominio
{
    public class Partida
    {
        public int IdPartida { get; set; }
        public TimeSpan Tiempo{ get; set; }
        public string ModoJuego { get; set; }
        public int Turno { get; set; }
        public int IdGanador { get; set; }
        public int IdPerdedor { get; set; }
    }
}
