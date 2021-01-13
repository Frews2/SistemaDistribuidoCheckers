/*
 Date: 10/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using Contratos;
using Dominio;
using System;
using System.Collections.Generic;

namespace ServerTests.CallbackHandlers
{
    public class RankingCallbackHandler : IRankingManagerCallback
    {
        public List<Ranking> rankings;
        public RankingResult rankingResult;

        public void GetRankingResult(RankingResult result)
        {
            if (result == RankingResult.RANKING_EXISTS)
            {
                rankingResult = RankingResult.RANKING_EXISTS;
            }
            else
            {
                rankingResult = RankingResult.NO_RANKING;
            }
        }

        public void ReceiveRankingData(List<Ranking> rankingList)
        {
            rankings = rankingList;
        }
    }
}
