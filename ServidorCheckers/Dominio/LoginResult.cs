﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contratos
{
    public enum LoginResult
    {
        PasswordIncorrecto = 1,
        NoExisteJugador = 2,
        ExisteJugador = 3
    }
}
