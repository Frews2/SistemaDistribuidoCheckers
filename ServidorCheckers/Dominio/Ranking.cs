/*
 Date: 27/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;

namespace Dominio
{
    /// <summary>
    /// Clase que representa el Ranking del dominio que describe la puntuación de un jugador
    /// </summary>
    public class Ranking
    {
        /// <summary>
        /// variable que contiene la identificacion del ranking
        /// </summary>
        public int IdRanking { get; set; }
        /// <summary>
        /// variable que contiene el <c>Jugador</c> al que le pertenece el ranking
        /// </summary>
        public Jugador Duenio { get; set; }
        /// <summary>
        /// variable que contiene la fecha de creacion de la cuenta del jugador
        /// </summary>
        public DateTime FechaRegistracion { get; set; }
        /// <summary>
        /// variable que contiene el numero de <c>Partidas</c> que ganó el jugador
        /// </summary>
        public int NumeroVictorias { get; set; }
        /// <summary>
        /// variable que contiene el numero de <c>Partidas</c> que jugó el jugador
        /// </summary>
        public int PartidasJugadas { get; set; }
        /// <summary>
        /// variable que contiene la punttuación acumulada de <c>Partidas</c> que jugó el jugador
        /// </summary>
        public int Rank { get; set; }
        /// <summary>
        /// variable que contiene el numero de <c>Partidas</c> que perdió el jugador
        /// </summary>
        public int NumeroPerdidas { get; set; }

    }
}
