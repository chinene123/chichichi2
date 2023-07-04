using Android.Content.PM;
using Android.Content;
using Android.Widget;
using Android;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.InteropServices.ComTypes;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Threading.Tasks;
using Android.OS;
using Android.App;
 using chichichi.Services;
using Xamarin.Essentials;
using System.IO;
using Java.IO;

namespace chichichi.Views
{
    public partial class AboutPage : ContentPage
    {
        public ObservableCollection<MyDataObject> Items3 { get; set; }
        private string selectedItema;
        private string path2;
        public AboutPage(string selectedItem, string path)
        {
            InitializeComponent();
            selectedItema = selectedItem;
            path2 = path;
            Items3 = new ObservableCollection<MyDataObject>();

            idoder = selectedItema;
            Loginchichichi.getaccount(idoder);
            List<object> listacc = new List<object>();
            listacc.AddRange(Loginchichichi.listacc);

            for (int i = 0; i < listacc.Count; i++)
            {
                string account = ((chichichi.Account)listacc[i]).account;
                string password = ((chichichi.Account)listacc[i]).password;
                string note = ((chichichi.Account)listacc[i]).note;
                string cookie = ((chichichi.Account)listacc[i]).cookie;
                int id = ((chichichi.Account)listacc[i]).id;
                int report = ((chichichi.Account)listacc[i]).report;

                MyDataObject dataObject = new MyDataObject
                {
                    STT = i + 1,
                    Account = account,
                    Password = password,
                    NewNote = note,
                    Cookie = cookie,
                    id = id,
                    report = report
                };

                switch (report)
                {
                    case 0:
                        dataObject.ButtonContent = "Báo lỗi";
                        break;
                    case 1:
                        dataObject.LabelContent = "Đang chờ xử lý";
                        break;
                    case 2:
                        dataObject.LabelContent = "Không có lỗi";
                        break;
                    case 3:
                        dataObject.LabelContent = "Đã hoàn tiền";
                        break;
                    default:
                        break;
                }

                Items3.Add(dataObject);
            }

            Loginchichichi.listacc.Clear();

            // Set the binding context to this instance of AboutPage
            this.BindingContext = this;
        }
        public class MyDataObject : INotifyPropertyChanged
        {
            public int id { get; set; }

            public string Cookie { get; set; }
            public string Account { get; set; }
            public string Password { get; set; }
            public string NewNote { get; set; }
            public int report { get; set; }
            public int DeletedRows { get; set; }
            public string ButtonContent { get; set; }
            public string LabelContent { get; set; }
            private int _stt;
            public int STT
            {
                get { return _stt; }
                set
                {
                    if (_stt != value)
                    {
                        _stt = value;
                        OnPropertyChanged(nameof(STT));
                    }
                }
            }

            // Các thuộc tính khác

            public event PropertyChangedEventHandler PropertyChanged;
            protected virtual void OnPropertyChanged(string propertyName)
            {
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
        }
        public static string idoder;
      

        private async void ListView_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            if (e.Item != null)
            {

                int selectedIndex = e.ItemIndex;
                string acc = Items3[selectedIndex].Account;
                string password = Items3[selectedIndex].Password;
                string cookie = Items3[selectedIndex].Cookie;

                string message = $"Selected Index: {selectedIndex}";

                // Use the DependencyService to display the toast message
                await DisplayAlert("acc của bạn", $"{selectedIndex}|{acc}|{password}", "OK");
                ///storage/emulated/0/Download/SGMANAGER_DATA2
                
                bool check = await DependencyService.Get<IFileWriter>().SaveTextToFile(cookie, "storage/emulated/0/Documents/SGMANAGER_DATA2");
                if (check)
                {

                    //Withroot.ClearAppData("com.lazada.android");
                    //await Task.Delay(1000);
                    //await DependencyService.Get<IOtherAppOpener>().OpenOtherApp("com.lazada.android", "com.lazada.activities.EnterActivity");
                    //await Task.Delay(3000);
                    //Withroot.StopAppWithRoot("com.lazada.android");
                    //Withroot.PushFile();
              
                  

                    Withroot.check();
                    await DependencyService.Get<IOtherAppOpener>().OpenOtherApp("com.companyname.chichichi", "crc64b78fd3759cba8416.MainActivity");
                    await DisplayAlert("Đăng nhập thành công acc ", $"{acc}|{password}", "OK");
                }
                else
                {
                    await DisplayAlert("Đăng nhập thất bại acc ", $"{selectedIndex}|{acc}|{password}", "OK");

                }

                // Tạo Intent để mở ứng dụng khác




            }

        }
    }
}