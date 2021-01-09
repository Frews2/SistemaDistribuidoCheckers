/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class ReportDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        public List<DataAccess.Reporte> GetReportList()
        {
            List<DataAccess.Reporte> playerReports = null;

            playerReports = context.Reporte.ToList();

            return playerReports;
        }

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
