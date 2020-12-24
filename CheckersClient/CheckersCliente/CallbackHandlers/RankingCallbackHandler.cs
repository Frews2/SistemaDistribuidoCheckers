/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/
using CheckersCliente.MainService;
using CheckersCliente.Managers;
using CheckersCliente.MenuPages;
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
                MessageBox.Show("Espere mientras se consulta");
            }
            else if (result == RankingResult.NO_RANKING)
            {
                MessageBox.Show("No se encuentra informacion ");
            }
            else
            {
                MessageBox.Show("No se pudo conectarse a la base de datos");
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
