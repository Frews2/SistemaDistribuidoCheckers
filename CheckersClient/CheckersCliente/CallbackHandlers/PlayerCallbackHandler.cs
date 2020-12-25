﻿/*
    Date: 23/11/2020
    Author(s): César Sergio Martinez Palacios
*/

using CheckersCliente.MainService;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using CheckersCliente.Windows;
using System.Windows;
using CheckersCliente.LogInPages;
using System.Windows.Navigation;

namespace CheckersCliente
{
    [CallbackBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public class PlayerCallbackHandler : IPlayerManagerCallback
    {
        public void GetLoginResult(LoginResult resultado, Jugador playerLoged)
        {
            if (resultado == LoginResult.ExisteJugadorVerificado)
            {
                Menu menu = new Menu(playerLoged);
                menu.Show();
                LogIn logIn = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                logIn.Close();
            }
            else 
            {
                if (resultado == LoginResult.ExisteJugadorNoVerificado)
                {
                    DialogWindowManager.ShowErrorWindow("No ha verificado su cuenta, porfavor verificarla");
                    LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                    login.NavigationService.Navigate(new FinalizeRegister(playerLoged));
                }
                else
                {
                    if (resultado == LoginResult.NoExisteJugador)
                    {
                        DialogWindowManager.ShowErrorWindow("No existe jugador");
                    }
                    else
                    {
                        DialogWindowManager.ShowErrorWindow("Verifica tu contraseña");
                    }
                } 
            }
            
        }

        public void GetSaveResult(SaveResult saveResult, Jugador newPlayer)
        {
            if(saveResult == SaveResult.JugadorGuardado)
            {
                DialogWindowManager.ShowSuccessWindow("Se ha registrado exitosamente, favor de confirmar correo");
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.NavigationService.Navigate(new FinalizeRegister(newPlayer));
            }
            else
            {
                DialogWindowManager.ShowErrorWindow("A ocurrido un error inesperado, vuelva a intentar");
            }
        }

        public void GetVerifyResult(VerificationResult resultadoVerificacion)
        {
            if(resultadoVerificacion == VerificationResult.VerificacionExistosa)
            {
                DialogWindowManager.ShowSuccessWindow("Se ha verificado correctamente tu cuenta");
            }
            else if (resultadoVerificacion == VerificationResult.NoExisteJugador)
            {
                DialogWindowManager.ShowErrorWindow("No existe jugador");
            }
            else
            {
                DialogWindowManager.ShowErrorWindow("Verifica tu pin");
            }
        }

        public void GetMailResult(MailResult emailResult, string playerNickname)
        {
            if(emailResult == MailResult.MailSend)
            {
                DialogWindowManager.ShowSuccessWindow("Se ha enviado el correo exitosamente");
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.NavigationService.Navigate(new VerificatePasswordPin(playerNickname));
            }
            else
            {
                if (emailResult == MailResult.UnknownPlayer)
                {
                    DialogWindowManager.ShowErrorWindow("No existe jugador");
                }
                else
                {
                    DialogWindowManager.ShowErrorWindow("Se ha tenido un error a la hora de enviar el correo, intente de nuevo");
                }
                
            }
        }
    
        public void GetPinResult(PinResult pinResult, string playerNickname)
        {
            if(pinResult == PinResult.VerifiedPin)
            {
                LogIn login = App.Current.Windows.OfType<LogIn>().FirstOrDefault();
                login.NavigationService.Navigate(new ChangePassword(playerNickname));
            }
            else
            {
                DialogWindowManager.ShowErrorWindow("Ha ingresado un pin incorrecto");
            }
        }

        public void GetPasswordChangeResult(PinResult verifiedPinResult)
        {
            throw new NotImplementedException();
        }
    }
}