using System;
using System.Collections.Generic;
using SDCTestClient.CallbackHandlers;
using SDCTestClient.Managers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using SDCTestClient.MainService;
using System.Threading;

namespace SDCTestClient
{
    [TestClass]
    public class UnitTest1
    {

        [TestMethod]
        public void GetAdminReportResult_ReportsFound_ReturnReportList()
        {
            BanManager.GetReportedList();
            Thread.Sleep(300);
            BanCallbackHandler banHandler = new BanCallbackHandler();
            Thread.Sleep(100);
            List<Reporte> result = banHandler.reportedPlayerList;
            Assert.IsTrue(result.Count >= 1);
        }
    }
}
