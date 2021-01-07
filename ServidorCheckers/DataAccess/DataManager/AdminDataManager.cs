using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class AdminDataManager
    {
        private readonly JugadoresDBEntities dataBase = new JugadoresDBEntities();
        public bool CheckNickname(string nickname)
        {
            bool exist = false;

            exist = dataBase.Administrador.Any(admin => admin.apodoAdmin.Equals(nickname));

            return exist;
        }

        public bool EsPasswordCorrecto(string password, string nickname)
        {
            bool correctPassword = false;

            var playerSearched = dataBase.Administrador.Where(admin => admin.apodoAdmin.Equals(nickname)).FirstOrDefault<Administrador>();

            if (HashManager.CompareHash(password, playerSearched.contrasenia))
            {
                correctPassword = true;
            }
            return correctPassword;
        }
    }
}
