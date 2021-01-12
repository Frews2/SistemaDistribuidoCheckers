/*
 Date: 2/12/2020
 Author(s): Ricardo Moguel Sanchez
*/

namespace Contratos
{
    /// <summary>
    /// Clase para gestionar una partida en progreso entre dos instancias de <c>Jugador</c>
    /// </summary>
    public class Match
    {
        public int matchActiveNumber { get; set; }
        public int currentPlayer { get; set; }
        public IGameManagerCallback playerOneCallback { get; set; }
        public IGameManagerCallback playerTwoCallback { get; set; }
        public Dominio.Jugador playerOneData { get; set; }
        public Dominio.Jugador playerTwoData { get; set; }
    }
}