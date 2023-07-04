using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;

namespace chichichi.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class orders : ContentPage
    {
        public orders()
        {
            InitializeComponent();
            LoadPickerItems();
        }
        private void LoadPickerItems()
        {
            // Add items to the Picker
            Loginchichichi.GetOrder();

            foreach (var orderNumber in Loginchichichi.listoder)
            {
                picker.Items.Add(orderNumber);
            }
            // Add more items if needed
        }
        private void OnPickerSelectionChanged(object sender, EventArgs e)
        {
            var selectedItem = picker.SelectedItem?.ToString();
            var path = inputpath.Text;
            Navigation.PushAsync(new AboutPage(selectedItem, path));



        }
    }
}