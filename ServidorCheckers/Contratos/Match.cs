﻿/*
 Date: 2/12/2020
 Author(s): Ricardo Moguel Sanchez
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contratos
{
    public class Match
    {
        public string matchID { get; set; }
        public Dictionary<IMatchmakingManagerCallback, Dominio.Jugador> matchPair { get; set; }
    }
}