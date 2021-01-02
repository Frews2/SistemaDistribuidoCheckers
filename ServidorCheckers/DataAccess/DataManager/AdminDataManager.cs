using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DataManager
{
    public class AdminDataManager
    {
        private readonly JugadoresDBEntities context = new JugadoresDBEntities();
        public bool CheckNickname(string nickname)
        {
            bool existe = false;

            existe = context.Administrador.Any(admin => admin.apodoAdmin.Equals(nickname));

            return existe;
        }

        public bool EsPasswordCorrecto(string password, string nickname)
        {
            bool esCorrecto = false;

            esCorrecto = context.Administrador.Any(admin => admin.apodoAdmin.Equals(nickname) && admin.contrasenia.Equals(password));

            return esCorrecto;
        }
    }
}
