/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace DataAccess.DataManager
{
    /// <summary>
    /// Clase que gestiona los datos contra consultas de la tabla de Reporte de la base de datos
    /// </summary>
    public class ReportDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        /// <summary>
        /// Obtiene una lista de <c>DataAccess.Reporte</c> consultados de la base de datos
        /// </summary>
        /// <returns>retorna un valor <c>ListDataAccess.Reporte </c> </returns>
        public List<DataAccess.Reporte> GetReportList()
        {
            List<DataAccess.Reporte> playerReports = null;

            playerReports = context.Reporte.ToList();

            return playerReports;
        }

        /// <summary>
        /// Guarda en la base de datos un <c>Reporte</c> con los datos de argumento proporcionados
        /// </summary>
        /// <param name="idPlayerReported"></param>
        /// <param name="idPlayerReporting"></param>
        /// <param name="reportExplain"></param>
        /// <returns>retorna valor tipo int</returns>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo DBUpdateException
        /// </exception>
        public int ReportPlayer(int idPlayerReported, int idPlayerReporting,string reportExplain)
        {
            int saveReport;
            DataAccess.Reporte newReport = new DataAccess.Reporte()
            {
                idAcusador = idPlayerReporting,
                idReportado = idPlayerReported,
                descripcionAcuso = reportExplain,
            };
            context.Reporte.Add(newReport);
            try
            {
                saveReport = context.SaveChanges();
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

            return saveReport;
        }
    }
}
