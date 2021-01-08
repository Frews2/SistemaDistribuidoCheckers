/*
 Date: 2/12/2020
 Author(s): Ricardo Moguel Sanchez
*/

using System;
using System.Collections.Generic;
using System.Linq;

namespace Contratos
{
    public class Match
    {
        public int matchActiveNumber;
        public int currentPlayer;
        public IGameManagerCallback playerOneCallback;
        public IGameManagerCallback playerTwoCallback;
        public Dominio.Jugador playerOneData;
        public Dominio.Jugador playerTwoData;
    }
}