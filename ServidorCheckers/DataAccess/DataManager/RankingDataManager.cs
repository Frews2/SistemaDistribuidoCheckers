/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System.Collections.Generic;
using System.Linq;
using Dominio;

namespace DataAccess.DataManager
{
    public class RankingDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        public List<DataAccess.Ranking> GetRankingList()
        {
            List<DataAccess.Ranking> playerRankings = null;

            playerRankings = context.Ranking.OrderBy(position => position.rank).ToList();

            return playerRankings;
        }

        public Dominio.Jugador GetPlayerByID(int playerID)
        {
            Jugador queriedPlayer = null;
            queriedPlayer = context.Jugador.Find(playerID);
            Dominio.Jugador matchedPlayer = new Dominio.Jugador
            {
                Apodo = queriedPlayer.apodo,
                Contrasenia = queriedPlayer.contrasenia,
                CorreoElectronico = queriedPlayer.correoElectronico,
                Status = queriedPlayer.status,
                RespuestaConfirmacion = queriedPlayer.respuestaConfirmacion,
                PreguntaRecuperacion = queriedPlayer.preguntaRecuperacion,
                PinConfirmacion = queriedPlayer.pinConfirmacion,
                IdCreador = queriedPlayer.idCreador,
                IdLenguaje = queriedPlayer.idioma
            };
            return matchedPlayer;
        }
    }
}
