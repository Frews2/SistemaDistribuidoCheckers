/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.MenuPages;
using CheckersCliente.Properties;
using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace CheckersCliente.CallbackHandlers
{
    class RankingCallbackHandler : IRankingManagerCallback
    {
        public void GetRankingResult(RankingResult result)
        {
            if (result == RankingResult.RANKING_EXISTS)
            {
                MessageBox.Show(Resources.LoadMessage);
            }
            else if (result == RankingResult.NO_RANKING)
            {
                MessageBox.Show(Resources.NoInfoMessage);
            }
            else
            {
                MessageBox.Show(Resources.NoConnectionMessage);
            }
        }

        public void ReceiveRankingData(Ranking[] rankingList)
        {
            List<Ranking> rankings = rankingList.ToList();
            Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
            menu.Navigate(new RankingList(rankings));
        }
    }
}
