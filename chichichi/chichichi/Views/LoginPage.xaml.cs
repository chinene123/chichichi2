using chichichi.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;

namespace chichichi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        private const string ApiUrl = "http://chichichi.site/api/user/login.php";
        public LoginPage()
        {
            InitializeComponent();
        }


        private async void Button_Clicked(object sender, EventArgs e)
        {

            string username = UsernameEntry.Text;
            string password = PasswordEntry.Text;

            Loginchichichi a = new Loginchichichi(username, password);
            Loginchichichi.Login();

            if (Loginchichichi.IsUserValid)
            {
                Navigation.PushAsync(new orders());
            }
            else
            {
                await DisplayAlert("Lỗi", "Tài khoản hoặc mật khẩu không chính xác", "OK");
            }

        }


        public class ApiResponse
        {
            public string status { get; set; }
            public string message { get; set; }
            public Info info { get; set; }
        }

        public class Info
        {
            public string id { get; set; }
            public string balance { get; set; }
            public string fullname { get; set; }
            public string role { get; set; }
            public string password { get; set; }
        }
    }
}