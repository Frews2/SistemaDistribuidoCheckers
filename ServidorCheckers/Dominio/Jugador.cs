using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Jugador
    {
        public int IdJugador { get; set; }
        public string Apodo { get; set; }
        public string Contrasenia { get; set; }
        public string CorreoElectronico { get; set; }
        public string Status { get; set; }
        public string RespuestaConfirmacion { get; set; }
        public string PreguntaRecuperacion { get; set; }
        public string PinConfirmacion { get; set; }
        public int IdLenguaje { get; set; }
        public int IdCreador { get; set; }
    }
}
