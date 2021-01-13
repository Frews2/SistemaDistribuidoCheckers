/*
 Date: 09/01/2021
 Author(s): Ricardo Moguel Sanchez
*/
using System;
using System.Collections.Generic;
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
    public class GetDataUnitTests
    {
        private static ServiceHost serviceHost;
        private static BanManagerClient banClient;
        private static RankingManagerClient rankingClient;
        private static PlayerManagerClient playerClient;
        private static GameManagerClient gameClient;

        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void GetReportData_ReportsFound_ReturnReportList()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();
                banClient.GetReportData();
                BanCallbackHandler banHandler = new BanCallbackHandler();
                List<Reporte> result = banHandler.reportedPlayerList;
                Assert.IsTrue(result.Count > 0);


            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }
        }

        [TestMethod]
        public void GetAdminReportResult_ReportsFound_ReturnREPORT_EXISTSResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();
                banClient.GetReportData();
                BanCallbackHandler banHandler = new BanCallbackHandler();
                AdminReportResult result = banHandler.adminReportResult;
                Assert.AreEqual(result, AdminReportResult.REPORT_EXISTS);

            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }
        }

        [TestMethod]
        public void GetAdminReportResult_ReportsFound_ReturnNO_REPORTS_EXISTResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();
                banClient.GetReportData();
                BanCallbackHandler banHandler = new BanCallbackHandler();
                AdminReportResult result = banHandler.adminReportResult;
                Assert.AreEqual(result, AdminReportResult.NO_REPORTS_EXIST);

            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }

        }

        [TestMethod]
        public void GetBanResult_ReturnPLAYER_BANNED_BANNINGResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();
                
                banClient.BanPlayer("testNickname");

                BanCallbackHandler banHandler = new BanCallbackHandler();
                BanResult result = banHandler.banResult;

                Assert.AreEqual(result, BanResult.PLAYER_BANNED);

            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }
        }

        [TestMethod]
        public void GetBanResult_ReturnPLAYER_ALREADY_BANNED_BANNINGResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();

                banClient.BanPlayer("testNickname");
                banClient.BanPlayer("testNickname");

                BanCallbackHandler banHandler = new BanCallbackHandler();
                BanResult result = banHandler.banResult;

                Assert.AreEqual(result, BanResult.PLAYER_ALREADY_BANNED);

            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }
        }

        [TestMethod]
        public void GetBanResult_ReturnERRORBANNING_BANNINGResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IBanManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new BanCallbackHandler());
                banClient = new BanManagerClient(instanceContext);
                endpoint.Name = banClient.Endpoint.Name;

                serviceHost.Open();
                serviceHost.Close();

                banClient.BanPlayer("testNickname");

                BanCallbackHandler banHandler = new BanCallbackHandler();
                BanResult result = banHandler.banResult;

                Assert.AreEqual(result, BanResult.ERROR_BANNING);

            }
            catch (EndpointNotFoundException)
            {
                banClient.Abort();
            }
            catch (CommunicationException)
            {
                banClient.Abort();
            }
        }

        [TestMethod]
        public void GetRankingData_RankingsFound_ReturnRankingList()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IRankingManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
                rankingClient = new RankingManagerClient(instanceContext);
                endpoint.Name = rankingClient.Endpoint.Name;

                serviceHost.Open();
                rankingClient.GetRankingData();
                RankingCallbackHandler rankHandler = new RankingCallbackHandler();
                List<Ranking> result = rankHandler.rankings;

                Assert.IsTrue(result.Count > 0);


            }
            catch (EndpointNotFoundException)
            {
                rankingClient.Abort();
            }
            catch (CommunicationException)
            {
                rankingClient.Abort();
            }
        }

        [TestMethod]
        public void GetRankingResult_ReturnRANKINGEXISTS_RankingResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IRankingManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
                rankingClient = new RankingManagerClient(instanceContext);
                endpoint.Name = rankingClient.Endpoint.Name;

                serviceHost.Open();

                rankingClient.GetRankingData();
                RankingCallbackHandler rankHandler = new RankingCallbackHandler();
                RankingResult result = rankHandler.rankingResult;

                Assert.AreEqual(result, RankingResult.RANKING_EXISTS);

            }
            catch (EndpointNotFoundException)
            {
                rankingClient.Abort();
            }
            catch (CommunicationException)
            {
                rankingClient.Abort();
            }
        }

        [TestMethod]
        public void GetRankingResult_ReturnNORANKING_RankingResult()
        {
            try
            {
                var baseAddress = new Uri("net.tcp://localhost:8090/Contratos");
                serviceHost = new ServiceHost(typeof(Contratos.MainService), baseAddress);
                System.ServiceModel.Channels.Binding binding = new NetTcpBinding();
                var address = new EndpointAddress("net.tcp://localhost:8090/ServerTests");
                var endpoint = serviceHost
                    .AddServiceEndpoint(typeof(Contratos.IRankingManager), binding, address.Uri);

                var smb = new ServiceMetadataBehavior { HttpGetEnabled = false };
                serviceHost.Description.Behaviors.Add(smb);
                InstanceContext instanceContext = new InstanceContext(new RankingCallbackHandler());
                rankingClient = new RankingManagerClient(instanceContext);
                endpoint.Name = rankingClient.Endpoint.Name;

                serviceHost.Open();

                rankingClient.GetRankingData();
                RankingCallbackHandler rankHandler = new RankingCallbackHandler();
                RankingResult result = rankHandler.rankingResult;

                Assert.AreEqual(result, RankingResult.NO_RANKING);

            }
            catch (EndpointNotFoundException)
            {
                rankingClient.Abort();
            }
            catch (CommunicationException)
            {
                rankingClient.Abort();
            }
        }

        [TestMethod]
        public void GetLoginResult_ReturnESADMIN_LoginResult()
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
                    Apodo = "ElFaraon",
                    Contrasenia = "hibridogang1"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.EsAdmin);

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
        public void GetLoginResult_ReturnESBANEADO_LoginResult()
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
                    Apodo = "frews2",
                    Contrasenia = "frews1"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.EsBaneado);

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
        public void GetLoginResult_ReturnLOGGEDPLAYER_LoginResult()
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
                    Contrasenia = "bobcholo1"
                };

                playerClient.Login(testPlayer);
                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.LOGGED_PLAYER);

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
        public void GetLoginResult_ReturnPasswordIncorrecto_LoginResult()
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
                    Contrasenia = "bob1"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.PasswordIncorrecto);

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
        public void GetLoginResult_ReturnNoExisteJugador_LoginResult()
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
                    Apodo = "testfakeplayer",
                    Contrasenia = "fakepassword1"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.NoExisteJugador);

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
        public void GetLoginResult_ReturnExisteJugadorNoVerificado_LoginResult()
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
                    Apodo = "notfinishedverificationtest",
                    Contrasenia = "password123"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.ExisteJugadorNoVerificado);

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
        public void GetLoginResult_ReturnExisteJugadorVerificado_LoginResult()
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
                    Apodo = "playerforverificationtest",
                    Contrasenia = "password123"
                };

                playerClient.Login(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                LoginResult result = playerHandler.loginResult;

                Assert.AreEqual(result, LoginResult.ExisteJugadorVerificado);

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
        public void GetMailResult_ReturnMailSend_MailResult()
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

                playerClient.SendMail(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                MailResult result = playerHandler.mailResult;

                Assert.AreEqual(result, MailResult.MailSend);

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
        public void GetMailResult_ReturnUnknownPlayer_MailResult()
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
                    Apodo = "fakeplayer",
                    Contrasenia = "password123",
                    CorreoElectronico = "unknownmail.uv.mx",
                    PinConfirmacion = "1234",
                    PreguntaRecuperacion = "testquestion?",
                    RespuestaConfirmacion = "testanswer",
                    IdCreador = 1,
                    IdLenguaje = 1,
                    Status = "No Verificado"
                };

                playerClient.SendMail(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                MailResult result = playerHandler.mailResult;

                Assert.AreEqual(result, MailResult.UnknownPlayer);

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
        public void GetMailResult_ReturnSendError_MailResult()
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

                playerClient.SendMail(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                MailResult result = playerHandler.mailResult;

                Assert.AreEqual(result, MailResult.SendError);

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
        public void SendActualPlayer_ReturnDataObtained_DataObtainedResult()
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
                };

                playerClient.GetActualPlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                DataObtainedResult result = playerHandler.dataObtainedResult;

                Assert.AreEqual(result, DataObtainedResult.DataObtained);

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
        public void SendActualPlayer_ReturnErrorObtainingData_DataObtainedResult()
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
                };

                playerClient.GetActualPlayer(testPlayer);
                PlayerCallbackHandler playerHandler = new PlayerCallbackHandler();
                DataObtainedResult result = playerHandler.dataObtainedResult;

                Assert.AreEqual(result, DataObtainedResult.ErrorObtainingData);

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
        public void FinishPlayerGame_PlayerTwoLose_int()
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

                serviceHost.Open();

                gameClient.FinishPlayerGame(1,2,0,2);
                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                int result = gameHandler.playerTwoCheckers;

                Assert.AreEqual(result, 0);

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
        public void FinishPlayerGame_PlayerOneLose_int()
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

                serviceHost.Open();

                gameClient.FinishPlayerGame(1, 2, 10, 0);
                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                int result = gameHandler.playerOneCheckers;

                Assert.AreEqual(result, 0);

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
        public void GetMatchmakingResult_ReturnMatchFound_MatchmakingResult()
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

                serviceHost.Open();

                Jugador testPlayer = new Jugador
                {
                    Apodo = "pklove3456",
                    Contrasenia = "bobcholo1",
                };
                gameClient.CreateMatch(testPlayer,CheckersGameMode.ClassicCheckers);

                Jugador testPlayer2 = new Jugador
                {
                    Apodo = "frews2",
                    Contrasenia = "frews1",
                };
                gameClient.CreateMatch(testPlayer2, CheckersGameMode.ClassicCheckers);

                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                MatchmakingResult result = gameHandler.matchmakingResult;

                Assert.AreEqual(result, MatchmakingResult.MATCH_FOUND);

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
        public void GetMatchmakingResult_ReturnUnableToEnterMatch_MatchmakingResult()
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
                serviceHost.Close();

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

                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                MatchmakingResult result = gameHandler.matchmakingResult;

                Assert.AreEqual(result, MatchmakingResult.UNABLE_TO_ENTER_MATCH);

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
        public void ReceiveGameMessage_ReturnMessage_String()
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
                gameClient2.SendGameMessage(2, "testMessage", 1);

                GameManagerCallbackHandler gameHandler = new GameManagerCallbackHandler();
                string result = gameHandler.receivedMessage;

                Assert.AreEqual(result, "testMessage");

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
