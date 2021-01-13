/*
 Date: 11/01/2021
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
    public class CreateDataUnitTests
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
        public void GetSaveResult_ReturnJugadorGuardado_SaveResult()
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
                    IdCreador = 1,
                    IdLenguaje = 1,
                    Status = "No Verificado"
                };

                playerClient.SavePlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                SaveResult result = playerHandler.saveResult;

                Assert.AreEqual(result, SaveResult.JugadorGuardado);

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
        public void GetSaveResult_ReturnNicknameExistente_SaveResult()
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
                    Apodo = "pklove3456",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                    IdCreador = 1,
                    IdLenguaje = 1,
                    Status = "No Verificado"
                };

                playerClient.SavePlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                SaveResult result = playerHandler.saveResult;

                Assert.AreEqual(result, SaveResult.NicknameExistente);

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
        public void GetSaveResult_ReturnCorreoExistente_SaveResult()
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
                    Apodo = "savetestplayer2",
                    Contrasenia = "password123",
                    CorreoElectronico = "testemail@gmail.com",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                    IdCreador = 1,
                    IdLenguaje = 1,
                    Status = "No Verificado"
                };

                playerClient.SavePlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                SaveResult result = playerHandler.saveResult;

                Assert.AreEqual(result, SaveResult.CorreoExistente);

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
        public void GetSaveResult_ReturnErrorGuardado_SaveResult()
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
                    IdCreador = 1,
                    IdLenguaje = 1,
                    Status = "No Verificado"
                };

                playerClient.SavePlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                SaveResult result = playerHandler.saveResult;

                Assert.AreEqual(result, SaveResult.ErrorGuardado);

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
        public void ReportPlayer_ReturnSavedReport_ReportResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IGameManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                gameClient = new GameManagerClient(instanceContext);
                endpoint.Name = gameClient.Endpoint.Name;

                InstanceContext instanceContext2 = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient gameClient2 = new GameManagerClient(instanceContext2);
                endpoint.Name = gameClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "pklove3456",
                    Contrasenia = "bobcholo1",
                };
                gameClient.CreateMatch(testPlayer, CheckersGameMode.ClassicCheckers);

                Jugador testPlayer2 = new Jugador
                {
                    Apodo = "frews2",
                    Contrasenia = "frews1",
                };
                gameClient2.CreateMatch(testPlayer2, CheckersGameMode.ClassicCheckers);

                gameClient.ReportPlayer(2, 1, "testReport reasonings");

                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                ReportSaveResult result = gameHandler.reportSaveResult;

                Assert.AreEqual(result, ReportSaveResult.SAVED_REPORT);

            }
            catch (EndpointNotFoundException)
            {
                gameClient.Abort();
            }
            catch (CommunicationException)
            {
                gameClient.Abort();
            }
        }

        [TestMethod]
        public void ReportPlayer_ReturnErrorSaving_ReportResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IGameManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new GameManagerCallbackHandler());
                gameClient = new GameManagerClient(instanceContext);
                endpoint.Name = gameClient.Endpoint.Name;

                InstanceContext instanceContext2 = new InstanceContext(new GameManagerCallbackHandler());
                GameManagerClient gameClient2 = new GameManagerClient(instanceContext2);
                endpoint.Name = gameClient.Endpoint.Name;

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "pklove3456",
                    Contrasenia = "bobcholo1",
                };
                gameClient.CreateMatch(testPlayer, CheckersGameMode.ClassicCheckers);

                Jugador testPlayer2 = new Jugador
                {
                    Apodo = "frews2",
                    Contrasenia = "frews1",
                };
                gameClient2.CreateMatch(testPlayer2, CheckersGameMode.ClassicCheckers);

                serviceHost.Close();
                gameClient.ReportPlayer(2, 1, "testReport reasonings");

                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                ReportSaveResult result = gameHandler.reportSaveResult;

                Assert.AreEqual(result, ReportSaveResult.ERROR_SAVING);

            }
            catch (EndpointNotFoundException)
            {
                gameClient.Abort();
            }
            catch (CommunicationException)
            {
                gameClient.Abort();
            }
        }


    }
}
