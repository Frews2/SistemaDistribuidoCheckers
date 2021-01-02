/*
 Date: 25/11/2020
 Author(s): Ricardo Moguel Sanchez
*/

using System.ServiceModel;

namespace Contratos
{
    [ServiceContract(CallbackContract = typeof(IChatManagerCallback))]
    interface IChatManager
    {
        [OperationContract(IsOneWay = true)]
        void SendText(string destination, string message);

        [OperationContract(IsOneWay = true)]
        void GetChatCallback();
    }

    [ServiceContract]
    public interface IChatManagerCallback
    {
        [OperationContract(IsOneWay = true)]
        void ReceiveText(string source, string message);
    }
}
