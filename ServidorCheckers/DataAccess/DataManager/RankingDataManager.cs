/*
 Date: 21/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class RankingDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();

        public List<Ranking> GetRankingList()
        {
            List<Ranking> playerRankings = null;

            playerRankings = context.Ranking.OrderBy(position => position.rank).ToList();

            return playerRankings;
        }
    }
}
