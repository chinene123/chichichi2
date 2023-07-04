using System;
using AndroidX;
using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using System.IO;
using System.Threading.Tasks;
using Xamarin.Forms;
using Android;
using Android.Content;
using Android.Widget;
using static chichichi.Droid.MainActivity;

[assembly: Dependency(typeof(FileWriterImplementation))]
[assembly: Dependency(typeof(OtherAppOpenerImplementation))]
[assembly: Dependency(typeof(CurrentActivityImplementation))]
namespace chichichi.Droid
{
    [Activity(Label = "chichichi", Icon = "@mipmap/logo", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
      

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.M)
            {
                if (CheckSelfPermission(Manifest.Permission.ManageExternalStorage) != Permission.Granted)

                {
                    RequestPermissions(new[] { Manifest.Permission.ManageExternalStorage }, 1);
                }
            }
         
            LoadApplication(new App(    ));
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            if (requestCode == 1)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    // Quyền được cấp, bạn có thể thực hiện các thao tác trên thư mục và tệp tin hệ thống
                }
                else
                {
                    // Quyền không được cấp, xử lý theo nhu cầu của bạn
                }
            }
        }
       
      
        public class FileWriterImplementation : IFileWriter
        {
            public async Task<bool> SaveTextToFile(string text, string filePath)
            {
                try
                {
                    using (StreamWriter writer = new StreamWriter(filePath))
                    {
                        await writer.WriteAsync(text);
                    }

                    Console.WriteLine("Ghi nội dung vào file thành công.");
                    return true;
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Lỗi khi ghi nội dung vào file:");
                    Console.WriteLine(ex.Message);
                    return false;
                }
            }
        }

        public class OtherAppOpenerImplementation : IOtherAppOpener
        {
          

           
            public async Task OpenOtherApp(string packageName, string activityName)
            {
                ICurrentActivity currentActivityDependency = DependencyService.Get<ICurrentActivity>();
                Activity currentActivity = currentActivityDependency.GetCurrentActivity();
                // Get the Context object from the current application
                Context context = Android.App.Application.Context;

                // Create an Intent to open another app
                Intent intent = new Intent();
                intent.SetComponent(new ComponentName(packageName, activityName));
                intent.SetAction(Intent.ActionMain);
                intent.AddCategory(Intent.CategoryLauncher);

                // Check if the other app exists on the device
                if (intent.ResolveActivity(context.PackageManager) != null)
                {
                    // Open the other app
                    intent.AddFlags(ActivityFlags.NewTask);
                    context.StartActivity(intent);
                    
                
                }
                else
                {
                    // The other app does not exist on the device
                    Toast.MakeText(context, "Ứng dụng không tồn tại.", ToastLength.Short).Show();
                }
            }
        }
        public class CurrentActivityImplementation : ICurrentActivity
        {
            public Activity GetCurrentActivity()
            {
                return Xamarin.Essentials.Platform.CurrentActivity;
            }
        }



    }
}
