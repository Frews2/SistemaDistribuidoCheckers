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
    /// <summary>
    /// Maneja las respuestas para mostrar la lista de ranking global a un jugador
    /// </summary>
    public class RankingCallbackHandler : IRankingManagerCallback
    {
        /// <summary>
        /// Maneja el resultado de un intento a consultar la lista de ranking global
        /// </summary>
        /// <param name="result"></param>
        public void GetRankingResult(RankingResult result)
        {
            if (result == RankingResult.RANKING_EXISTS)
            {
                MessageBox.Show(Resources.LoadMessage);
            }
            else
            {
                if (result == RankingResult.NO_RANKING)
                {
                    MessageBox.Show(Resources.NoInfoMessage);
                }
                else
                {
                    MessageBox.Show(Resources.NoConnectionMessage);
                }
            }
        }

        /// <summary>
        /// Muestra la lista de ranking global en una pagina <c>RankingList</c>
        /// </summary>
        /// <param name="rankingList"></param>
        public void ReceiveRankingData(Ranking[] rankingList)
        {
            List<Ranking> rankings = rankingList.ToList();

            if (rankings.Count > 0)
            {
                Menu menu = App.Current.Windows.OfType<Menu>().FirstOrDefault();
                menu.EnableNavigation();
                menu.Navigate(new RankingList(rankings));
            }
            else
            {
                MessageBox.Show(Resources.NoInfoMessage);
            }
        }
    }
}
