/*
 Date: 12/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using System;
using System.ServiceModel;
using System.ServiceModel.Description;
using Contratos;
using Dominio;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ServerTests.CallbackHandlers;
using ServerTests.MainService;

namespace ServerTests
{
    [TestClass]
    public class UpdateDataUnitTests
    {
        private static ServiceHost serviceHost;
        private static PlayerManagerClient playerClient;
        private static GameManagerClient gameClient;

        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void GetPinResult_ReturnVerificacionExitosa_VerificationResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IPlayerManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
                playerClient = new PlayerManagerClient(instanceContext);
                endpoint.Name = playerClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "savetestplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                };

                playerClient.VerifyPlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                VerificationResult result = playerHandler.verificationResult;

                Assert.AreEqual(result, VerificationResult.VerificacionExistosa);

            }
            catch (EndpointNotFoundException)
            {
                playerClient.Abort();
            }
            catch (CommunicationException)
            {
                playerClient.Abort();
            }
        }

        [TestMethod]
        public void GetPinResult_ReturnPinIncorecto_VerificationResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IPlayerManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
                playerClient = new PlayerManagerClient(instanceContext);
                endpoint.Name = playerClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "savetestplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "7777",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                };

                playerClient.VerifyPlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                VerificationResult result = playerHandler.verificationResult;

                Assert.AreEqual(result, VerificationResult.PinIncorrecto);

            }
            catch (EndpointNotFoundException)
            {
                playerClient.Abort();
            }
            catch (CommunicationException)
            {
                playerClient.Abort();
            }
        }

        [TestMethod]
        public void GetPinResult_ReturnNoExisteJugador_VerificationResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IPlayerManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
                playerClient = new PlayerManagerClient(instanceContext);
                endpoint.Name = playerClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "nonexitstingplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "fakemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                };

                playerClient.VerifyPlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                VerificationResult result = playerHandler.verificationResult;

                Assert.AreEqual(result, VerificationResult.NoExisteJugador);

            }
            catch (EndpointNotFoundException)
            {
                playerClient.Abort();
            }
            catch (CommunicationException)
            {
                playerClient.Abort();
            }
        }

        [TestMethod]
        public void PasswordChangeResult_ReturnChangedPassword_PasswordChangeResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IPlayerManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
                playerClient = new PlayerManagerClient(instanceContext);
                endpoint.Name = playerClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "savetestplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                };

                playerClient.ChangePassword(testPlayer.Apodo, "newpassword");
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                PasswordChangeResult result = playerHandler.passwordChangeResult;

                Assert.AreEqual(result, PasswordChangeResult.ChangedPassword);

            }
            catch (EndpointNotFoundException)
            {
                playerClient.Abort();
            }
            catch (CommunicationException)
            {
                playerClient.Abort();
            }
        }

        [TestMethod]
        public void PasswordChangeResult_ReturnErrorChanging_PasswordChangeResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IPlayerManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new PlayerCallbackHandler());
                playerClient = new PlayerManagerClient(instanceContext);
                endpoint.Name = playerClient.Endpoint.Name;

                serviceHost.Open();
                serviceHost.Close();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "savetestplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                };

                playerClient.ChangePassword(testPlayer.Apodo, "newpassword");
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                PasswordChangeResult result = playerHandler.passwordChangeResult;

                Assert.AreEqual(result, PasswordChangeResult.ErrorChanging);

            }
            catch (EndpointNotFoundException)
            {
                playerClient.Abort();
            }
            catch (CommunicationException)
            {
                playerClient.Abort();
            }
        }
    }
}
