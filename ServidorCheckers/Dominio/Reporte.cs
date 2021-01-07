using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Reporte
    {
        public int IdReporte { get; set; }
        public Jugador Acusador { get; set; }
        public Jugador Reportado { get; set; }
        public string DescripcionAcuso { get; set; }
    }
}
