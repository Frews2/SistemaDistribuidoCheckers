/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
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
            Dominio.Jugador searchedPlayer = new Dominio.Jugador();
            try
            {
                Jugador queriedPlayer = null;
                queriedPlayer = context.Jugador.Find(playerID);
                searchedPlayer.Apodo = queriedPlayer.apodo;
                searchedPlayer.Contrasenia = queriedPlayer.contrasenia;
                searchedPlayer.CorreoElectronico = queriedPlayer.correoElectronico;
                searchedPlayer.Status = queriedPlayer.status;
                searchedPlayer.RespuestaConfirmacion = queriedPlayer.respuestaConfirmacion;
                searchedPlayer.PreguntaRecuperacion = queriedPlayer.preguntaRecuperacion;
                searchedPlayer.PinConfirmacion = queriedPlayer.pinConfirmacion;
                searchedPlayer.IdCreador = queriedPlayer.idCreador;
                searchedPlayer.IdLenguaje = queriedPlayer.idioma;
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }
            return searchedPlayer;
        }

        public void UpdateMatchResults(Dominio.Jugador playerOne, int playerOneCheckers, Dominio.Jugador playerTwo, int playerTwoCheckers, int playerNumberWinner)
        {
            try
            {
                if (playerNumberWinner == 1)
                {
                    var winnerRankingChange = context.Ranking.Where(ranking => playerOne.IdJugador == ranking.idDuenio).FirstOrDefault<Ranking>();
                    winnerRankingChange.rank += (playerOneCheckers * 10) + 10;
                    winnerRankingChange.numeroVictorias += 1;
                    winnerRankingChange.partidasJugadas++;
                    var loserRankingChange = context.Ranking.Where(ranking => playerTwo.IdJugador == ranking.idDuenio).FirstOrDefault<Ranking>();
                    loserRankingChange.rank += 10;
                    loserRankingChange.numeroPerdidas += 1;
                    loserRankingChange.partidasJugadas++;
                    context.SaveChanges();
                }
                else
                {
                    var winnerRankingChange = context.Ranking.Where(ranking => playerTwo.IdJugador == ranking.idDuenio).FirstOrDefault<Ranking>();
                    winnerRankingChange.rank += (playerTwoCheckers * 10) + 10;
                    winnerRankingChange.numeroVictorias += 1;
                    winnerRankingChange.partidasJugadas++;
                    var loserRankingChange = context.Ranking.Where(ranking => playerOne.IdJugador == ranking.idDuenio).FirstOrDefault<Ranking>();
                    loserRankingChange.rank += 10;
                    loserRankingChange.rank += 10;
                    loserRankingChange.numeroPerdidas += 1;
                    loserRankingChange.partidasJugadas++;
                    context.SaveChanges();
                }
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }
        }
    }
}
