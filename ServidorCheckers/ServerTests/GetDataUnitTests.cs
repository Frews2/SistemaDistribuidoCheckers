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

        [ClassCleanup]
        public static void CleanupClass()
        {
            serviceHost.Close();
        }

        [TestMethod]
        public void GetAdminReportResult_ReportsFound_ReturnReportList()
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
            catch (TimeoutException)
            {
                banClient.Abort();
            }
            catch (Exception)
            {
                banClient.Abort();
                throw;
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
            catch (TimeoutException)
            {
                banClient.Abort();
            }
            catch (Exception)
            {
                banClient.Abort();
                throw;
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
            catch (TimeoutException)
            {
                banClient.Abort();
            }
            catch (Exception)
            {
                banClient.Abort();
                throw;
            }
        }

        [TestMethod]
        public void GetAdminReportResult_ReportsFound_ReturnERROR_BANNINGResult()
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
            catch (TimeoutException)
            {
                banClient.Abort();
            }
            catch (Exception)
            {
                banClient.Abort();
                throw;
            }
        }
    }
}
