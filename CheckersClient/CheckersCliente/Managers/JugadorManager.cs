﻿/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/
using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace CheckersCliente
{
    public class JugadorManager
    {
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

        public static void VerifyPin(string playerNickname, string playerPin)
        {
            InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
            PlayerManagerClient server = new PlayerManagerClient(instanceContext);

            try
            {
                server.VerifyPin(playerNickname,playerPin);
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show("No se ha podido conectar a la Base de datos, intentar mas tarde");
            }
        }

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
