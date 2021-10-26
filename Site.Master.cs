using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WISEPaaS.DataHub.Edge.DotNet.SDK;
using WISEPaaS.DataHub.Edge.DotNet.SDK.Model;

namespace BuildingInspection
{
    public partial class SiteMaster : MasterPage
    {
        private EdgeAgent edgeAgent;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                var userID = int.Parse(Session["userID"].ToString());
                var db = new DataClasses1DataContext();
                User source = db.Users.SingleOrDefault(x => x.userID == userID);
                login.Text = source.userName;
                login.NavigateUrl = "~/Profile.aspx";
            }
            else
            {
                hrefLogout.Visible = false;
                login.Text = "Login";
                login.NavigateUrl = "~/Login.aspx";
            }

            EdgeAgentOptions options = new EdgeAgentOptions()
            {
                ConnectType = ConnectType.DCCS,                         // Connection type (DCCS, MQTT). The default is DCCS.
                DCCS = new DCCSOptions()                                // If ConnectType is DCCS, the following options must be entered:
                {
                    CredentialKey = "2791a9cd0959a957d70805f9b0379fj3", // Credential Key
                    APIUrl = "https://api-dccs-ensaas.education.wise-paas.com/"          // DCCS API Url
                },
                //MQTT = new MQTTOptions()                                // If ConnectType is MQTT, the following options must be entered:
                //{
                //    HostName = "127.0.0.1",
                //    Port = 1883,
                //    Username = "admin",
                //    Password = "admin",
                //    ProtocolType = Protocol.TCP
                //},
                UseSecure = false,
                AutoReconnect = true,
                ReconnectInterval = 1000,
                NodeId = "c4a4f9d6-032b-4da2-8ede-4718e814a96b",        // Get from portal
                Type = EdgeType.Gateway,                                // Configure the edge type as Gateway or Device. The default is Gateway.
                //DeviceId = "SmartDevice1",                              // If the type is Device, the DeviceId must be entered. 
                Heartbeat = 60000,                                      // The default is 60 seconds.
                DataRecover = true                                      // Configure whether to recover data when disconnected.
            };
            edgeAgent = new EdgeAgent(options);

            edgeAgent.Connected += edgeAgent_Connected;
            edgeAgent.Disconnected += edgeAgent_Disconnected;
            edgeAgent.MessageReceived += edgeAgent_MessageReceived;
        }

        private void edgeAgent_Connected(object sender, EdgeAgentConnectedEventArgs e)
        {
            // Connected
            Console.WriteLine("Connect success!");
        }

        private void edgeAgent_Disconnected(object sender, DisconnectedEventArgs e)
        {
            // Disconnected
            Console.WriteLine("Disconnected.");
        }

        private void edgeAgent_MessageReceived(object sender, MessageReceivedEventArgs e)
        {
            switch (e.Type)
            {
                case MessageType.WriteValue:
                    WriteValueCommand wvcMsg = (WriteValueCommand)e.Message;
                    foreach (var device in wvcMsg.DeviceList)
                    {
                        Console.WriteLine("DeviceId: {0}", device.Id);
                        foreach (var tag in device.TagList)
                        {
                            Console.WriteLine("TagName: {0}, Value: {1}", tag.Name, tag.Value.ToString());
                        }
                    }
                    break;
                case MessageType.WriteConfig:
                    break;
                case MessageType.ConfigAck:
                    ConfigAck cfgAckMsg = (ConfigAck)e.Message;
                    Console.WriteLine("Upload Config Result: {0}", cfgAckMsg.Result.ToString());
                    break;
            }
        }
    }
}