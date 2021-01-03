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
    }
}
