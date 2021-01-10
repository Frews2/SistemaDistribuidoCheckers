//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Jugador
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Jugador()
        {
            this.Ranking = new HashSet<Ranking>();
            this.Reporte = new HashSet<Reporte>();
            this.Reporte1 = new HashSet<Reporte>();
        }
    
        public int idJugador { get; set; }
        public string apodo { get; set; }
        public string contrasenia { get; set; }
        public string correoElectronico { get; set; }
        public string status { get; set; }
        public string respuestaConfirmacion { get; set; }
        public string preguntaRecuperacion { get; set; }
        public string pinConfirmacion { get; set; }
        public int idCreador { get; set; }
        public int idioma { get; set; }
    
        public virtual Administrador Administrador { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ranking> Ranking { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Reporte> Reporte { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Reporte> Reporte1 { get; set; }
    }
}
