/*
 Date: 27/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;

namespace Dominio
{
    /// <summary>
    /// Clase que representa una Partida del dominio que guarda información 
    /// de una instancia de juego checkers
    /// </summary>
    public class Partida
    {
        /// <summary>
        /// variable que contiene la identificacion de la partida
        /// </summary>
        public int IdPartida { get; set; }
        /// <summary>
        /// variable que contiene el tiempo transcurrio durante una partida de inicio a fin
        /// </summary>
        public TimeSpan Tiempo{ get; set; }
        /// <summary>
        /// variable que contiene el modo de juego de la partida
        /// </summary>
        public string ModoJuego { get; set; }
        /// <summary>
        /// variable que indica el numero de turnos para llegar al fin de la partida
        /// </summary>
        public int Turno { get; set; }
        /// <summary>
        /// variable que indica la identificacion del <c>Jugador</c> que ganó la partida
        /// </summary>
        public int IdGanador { get; set; }
        /// <summary>
        /// variable que indica la identificacion del <c>Jugador</c> que perdió la partida
        /// </summary>
        public int IdPerdedor { get; set; }
    }
}
