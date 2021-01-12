/*
 Date: 06/12/2020
 Author(s): Ricardo Moguel Sanchez
*/
namespace Dominio
{
    /// <summary>
    /// Clase que representa el Reporte del dominio que acusa a un jugador de mal comportamiento
    /// </summary>
    public class Reporte
    {
        /// <summary>
        /// variable que contiene la identificacion del reporte
        /// </summary>
        public int IdReporte { get; set; }
        /// <summary>
        /// variable que contiene el <c>Jugador</c> que creó el reporte de mal comportamiento
        /// </summary>
        public Jugador Acusador { get; set; }
        /// <summary>
        /// variable que contiene el <c>Jugador</c> acusado de mal comportamiento
        /// </summary>
        public Jugador Reportado { get; set; }
        /// <summary>
        /// variable que contiene una descripción breve por la razón de crear el reporte
        /// </summary>
        public string DescripcionAcuso { get; set; }
    }
}
