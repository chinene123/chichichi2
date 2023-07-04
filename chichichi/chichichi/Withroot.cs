using Android.Widget;
using Renci.SshNet;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;



namespace chichichi
{
    public static class Withroot
    {
        public static async void StopAppWithRoot(string packageName)
        {
            string adbCommand = $"am force-stop {packageName}";

            // Tạo quá trình để thực hiện lệnh
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = "/system/bin/sh";
            process.StartInfo.Arguments = $"-c \"su -c '{adbCommand}'\"";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;

            // Bắt đầu quá trình
            process.Start();

            // Đọc kết quả từ quá trình
            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            // Chờ quá trình kết thúc
            process.WaitForExit();

            // Kiểm tra kết quả và hiển thị thông báo

        }
        public static void ClearAppData(string packageName)
        {
            // Tạo quá trình để thực hiện lệnh shell    
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = "/system/bin/sh";

            process.StartInfo.Arguments = $"-c \"su -c pm clear '{packageName}'\"";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;

            // Bắt đầu quá trình
            process.Start();

            // Đọc kết quả từ quá trình
            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            // Chờ quá trình kết thúc
            process.WaitForExit();

            // Kiểm tra kết quả và hiển thị thông báo

        }
        public static void PushFile()
        {

            string adbCommand = "su -c 'cp /sdcard/Documents/SGMANAGER_DATA2 /data/data/com.lazada.android/files'";
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = "/system/bin/sh";
            process.StartInfo.Arguments = $"-c \"{adbCommand}\"";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;
            process.Start();
            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();
            process.WaitForExit();


        }
        public static void checkfolder()
        {
            string adbCommand = $"su -c 'mount -o remount,rw /data/data && cd /data/data && ls'";
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            process.StartInfo.FileName = "/system/bin/sh";
            process.StartInfo.Arguments = $"-c \"{adbCommand}\"";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;

            process.Start();
            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            process.WaitForExit();




        }


        public static void ExecuteCommand()
        {
           


        }
        public static void check()
        {

            string adbCommand = $"su -c 'ls /data/data'";
            Process process = new Process();
            process.StartInfo.FileName = "/system/bin/sh";
            process.StartInfo.Arguments = $"-c \"{adbCommand}\"";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;

            process.Start();
            string output = process.StandardOutput.ReadToEnd();
            string error = process.StandardError.ReadToEnd();

            process.WaitForExit();
     



        }




        }
    }
