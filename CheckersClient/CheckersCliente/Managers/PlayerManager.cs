/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using System.ServiceModel;
using System.Windows;

namespace CheckersCliente
{
    /// <summary>
    /// Crea un cliente para crear solicitudes al servidor con respecto a servicios de gestión de jugadores
    /// </summary>
    public static class PlayerManager
    {
        /// <summary>
        /// Crea una solicitud al servidor para iniciar sesion al sistema para un <c>Jugador</c>
        /// </summary>
        /// <param name="jugador"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void Login(Jugador jugador)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);
            try
            {
                server.Login(jugador);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para crear y guardar un <c>Jugador</c> al sistema
        /// </summary>
        /// <param name="jugador"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void SaveNewPlayer(Jugador jugador)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);
            try
            {
                server.SavePlayer(jugador);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para terminar sesion de un <c>Jugador</c> y cerrar conexión al servidor
        /// </summary>
        /// <param name="playerNickname"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void EndSession(string playerNickname)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);
            try
            {
                server.CloseSession(playerNickname);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("El servidor ya no esta disponible");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para verificar un <c>Jugador</c> durante el proceso de registrar una cuenta nueva
        /// </summary>
        /// <param name="jugador"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void VerifyPlayer(Jugador jugador)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.VerifyPlayer(jugador);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud para enviar un correo al email de un <c>Jugador</c> por segunda vez
        /// </summary>
        /// <param name="player"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void ResendEmail(Jugador player)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.SendMail(player);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para enviar un correo con codigo de verificacion PIN para cambiar contraseña
        /// de un <c>Jugador</c>
        /// </summary>
        /// <param name="playerNickname"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void ObtainMailPassword(string playerNickname)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.PasswordForgotMail(playerNickname);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para verificar el numero PIN ingresado para habilitar un cambio de contraseña
        /// </summary>
        /// <param name="playerNickname"></param>
        /// <param name="playerPin"></param>
        /// <param name="answerText"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void VerifyPin(string playerNickname, string playerPin, string answerText)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.VerifyPin(playerNickname,playerPin, answerText);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para actualizar la contraseña asociada a un <c>Jugador</c>
        /// </summary>
        /// <param name="player"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void ChangePassword(Jugador player)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.ChangePassword(player.Apodo, player.Contrasenia);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

        /// <summary>
        /// Crea una solicitud al servidor para obtener los datos de un <c>Jugador</c>
        /// </summary>
        /// <param name="actualPlayer"></param>
        /// <exception> 
        /// Esta excepcion puede retornar una excepcion tipo EndpointNotFoundException
        /// </exception>
        public static void GetActualPlayer(Jugador actualPlayer)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.GetActualPlayer(actualPlayer);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }
    }
}
