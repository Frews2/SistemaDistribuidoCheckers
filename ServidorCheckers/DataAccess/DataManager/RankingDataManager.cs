/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using Dominio;

namespace DataAccess.DataManager
{
    public class RankingDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();
        private const int CHECKER_POINT_VALUE = 10;

        public void NewPlayerRank(Jugador newPlayer)
        {
            string playerNickname = newPlayer.apodo;
            newPlayer = GetPlayerByNickname(playerNickname);
            DateTime actualDate = DateTime.Now;
            string sqlDate = actualDate.ToString("yyyy-MM-dd HH:mm:ss.fff");
            actualDate = Convert.ToDateTime(sqlDate);
            Ranking newRank = new Ranking()
            {
                idDuenio = newPlayer.idJugador,
                fechaRegistracion = actualDate,
                numeroVictorias = 0,
                numeroPerdidas = 0,
                partidasJugadas = 0,
                rank = 0
            };
            try
            {
                context.Ranking.Add(newRank);
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }

        }

        public List<DataAccess.Ranking> GetRankingList()
        {
            List<DataAccess.Ranking> playerRankings = null;

            playerRankings = context.Ranking.OrderBy(position => position.rank).ToList();

            return playerRankings;
        }

        public DataAccess.Jugador GetPlayerByNickname(string playerNickname)
        {
            try
            {
                Jugador searchedPlayer =context.Jugador.Where(playerSearch => playerSearch.apodo == playerNickname).FirstOrDefault<Jugador>();

                return searchedPlayer;
            }
            catch (DbUpdateException)
            {
                throw new DbUpdateException();
            }
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
                    loserRankingChange.rank += CHECKER_POINT_VALUE;
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
                    loserRankingChange.rank += CHECKER_POINT_VALUE;
                    loserRankingChange.rank += CHECKER_POINT_VALUE;
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
