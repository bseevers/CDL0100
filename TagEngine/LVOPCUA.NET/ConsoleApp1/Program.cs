using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using LVOPCNETInterface;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("1 - Create an Application Configuration.");

            string sDataDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);

            OPCUALVInterface pUnwind, pWind;

            try
            {
                pUnwind = new OPCUALVInterface("192.168.1.13", sDataDirectory);
                pWind = new OPCUALVInterface("192.168.1.14", sDataDirectory);
            }
            catch(Exception ex)
            {
                Console.WriteLine("1 - Failed to create at least 1 OPCUA interface." + ex.Message);
                return; 
            }

            ManualResetEvent quitEvent = new ManualResetEvent(false);
            try
            {
                Console.CancelKeyPress += (sender, eArgs) =>
                {
                    quitEvent.Set();
                    eArgs.Cancel = true;
                };
            }
            catch
            {
            }

            // add tags to new subscription
            pUnwind.StartNewSubscription();
            
            pUnwind.AddTagToSubscription("HSC_POSITION_METERS");
            pUnwind.AddTagToSubscription("HSC_VELOCITY_MpMin");
            pUnwind.AddTagToSubscription("PLC_Version");
            pUnwind.AddTagToSubscription("MMI_WIND_UNIT_READY");
            pUnwind.AddTagToSubscription("MMI_MAIN_MOTOR_ALARM");
            pUnwind.FinishSubscription();

            // add tags to new subscription
            pUnwind.StartNewSubscription();
            pUnwind.AddTagToSubscription("MMI_RESET_ALARMS");

            pUnwind.FinishSubscription();

            int nDictSize = pUnwind.DictionarySize();

            Int16 i = 0;


            do
            {

                if (pUnwind.AreAllTagsReady() > 0)
                    break;

                i++;

                quitEvent.WaitOne(1000);
            } while (i < 10);

            pWind.StartNewSubscription();
            pWind.AddTagToSubscription("HSC_POSITION_METERS");
            pWind.AddTagToSubscription("HSC_VELOCITY_MpMin");
            pWind.AddTagToSubscription("PLC_Version");
            pWind.AddTagToSubscription("MMI_WIND_UNIT_READY");
            pWind.AddTagToSubscription("MMI_MAIN_MOTOR_ALARM");
            pWind.FinishSubscription();

            // add tags to new subscription
            pWind.StartNewSubscription();
            pWind.AddTagToSubscription("MMI_RESET_ALARMS");

            pWind.FinishSubscription();

            nDictSize = pWind.DictionarySize();

            i = 0;


            do
            {

                if (pWind.AreAllTagsReady() > 0)
                    break;

                i++;

                quitEvent.WaitOne(1000);
            } while (i < 10);

            pUnwind.WriteBoolValue("MMI_RESET_ALARMS", 1);
            pWind.WriteBoolValue("MMI_RESET_ALARMS", 1);

            do {
                // wait for timeout or Ctrl-C
                quitEvent.WaitOne(1000);

                Console.WriteLine("Unwind Last Sweep Time is {0}", pUnwind.GetFltValue("Sweep Time"));

                Console.WriteLine("Unwind Ready {0}", pUnwind.GetBoolValue("MMI_WIND_UNIT_READY"));

                Console.WriteLine("Unwind Current Position {0} m", pUnwind.GetFltValue("HSC_POSITION_METERS"));

                Console.WriteLine("Unwind Velocity {0} m/min", pUnwind.GetFltValue("HSC_VELOCITY_MpMin"));

                Console.WriteLine("Unwind PLC Version {0}", pUnwind.GetFltValue("PLC_Version"));

                Console.WriteLine("Wind CurrentSessionCount is {0}", pWind.GetIntValue("CurrentSessionCount"));

                Console.WriteLine("Wind Last Sweep Time is {0}", pWind.GetFltValue("Sweep Time"));

                Console.WriteLine("Wind Ready {0}", pWind.GetBoolValue("MMI_WIND_UNIT_READY"));

                Console.WriteLine("Wind Current Position {0} m", pWind.GetFltValue("HSC_POSITION_METERS"));

                Console.WriteLine("Wind Velocity {0} m/min", pWind.GetFltValue("HSC_VELOCITY_MpMin"));

                Console.WriteLine("Wind PLC Version {0}", pWind.GetFltValue("PLC_Version"));

                Console.WriteLine("Wind CurrentSessionCount is {0}", pWind.GetIntValue("CurrentSessionCount"));

                i++;
            } while (i < 10);

            pUnwind.WriteBoolValue("MMI_RESET_ALARMS", 0);

            pWind.WriteBoolValue("MMI_RESET_ALARMS", 0);

            pUnwind.Disconnect();
            pWind.Disconnect();
        }
    }
}
