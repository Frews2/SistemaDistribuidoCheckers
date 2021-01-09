/*
 Date: 2/12/2020
 Author(s): Ricardo Moguel Sanchez
*/

namespace Contratos
{
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