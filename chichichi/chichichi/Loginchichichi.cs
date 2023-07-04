using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using static Xamarin.Forms.Internals.Profile;
using Xamarin.Forms;

namespace chichichi
{
    public class Loginchichichi
    {
        public static bool IsUserValid { get; private set; }

        public static string SpreadsheetId { get; private set; }
        public static List<string> listoder = new List<string>();
        public static List<object> listacc = new List<object>();
        public static List<object> listproduct = new List<object>();
        public static List<object> listallacc = new List<object>();
        public static string username { get; private set; }
        public static string password { get; private set; }
        public static string Name { get; private set; }
        public static int id { get; private set; }
        public static int Balance { get; private set; }
        public Loginchichichi(string _username, string _password)
        {
            username = _username;
            password = _password;
        }
        public static void Login()
        {
            string apiUrl = $"http://chichichi.site/api/user/login.php?";

            string postData = $"username={username}&password={password}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<LoginResponse>(responseContent);
            if (result.status == "success")
            {
                Name = result.info.fullname;
                Balance = result.info.balance;
                id = result.info.id;
                IsUserValid = true;
            }
            // Handle the result as needed


        }

        public static void GetOrder()
        {
            listoder.Clear();


            string apiUrl = $"http://chichichi.site/api/user/getorder.php?";

            string postData = $"username={username}&password={password}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<orderResponse>(responseContent);

            if (result.success)
            {
                listoder.AddRange(result.order_numbers);
            }



        }
        public static void getaccount(string orderid)
        {
            listacc.Clear();

            string apiUrl = $"http://chichichi.site/api/user/getaccountuser.php?";

            string postData = $"username={username}&password={password}&orderid={orderid}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<getaccountResponse>(responseContent);
            if (result.status == "success")
            {
                listacc.AddRange(result.account);
            }



        }
        public static bool note(int id, string newNote)
        {
            bool check = false;
            string apiUrl = $"http://chichichi.site/api/user/note.php";

            string postData = $"&username={username}&password={password}&newNote={newNote}&id={id}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<noteResponse>(responseContent);
            if (result.success)
            {
                check = true;

            }
            // Handle the result as needed

            return check;
        }
        public static void getproduct()
        {
            listproduct.Clear();
            string apiUrl = $"http://chichichi.site/api/user/product.php";

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "GET";
            request.Accept = "application/json";

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<product>(responseContent);
            if (result.status)
            {
                listproduct.AddRange(result.data);
            }

        }
        public static bool buy(int product_id, int quantity)
        {
            bool check = false;
            string apiUrl = $"http://chichichi.site/api/user/buy.php";

            string postData = $"product_id={product_id}&quantity={quantity}&username={username}&password={password}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<buyResponse>(responseContent);
            if (result.status == "success")
            {
                check = true;

            }


            return check;
        }
        public static bool report(int id)
        {
            bool check = false;
            string apiUrl = $"http://chichichi.site/api/user/report.php";

            string postData = $"&username={username}&password={password}&id={id}";
            byte[] postDataBytes = Encoding.UTF8.GetBytes(postData);

            string responseContent = "";

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postDataBytes.Length;

            using (Stream requestStream = request.GetRequestStream())
            {
                requestStream.Write(postDataBytes, 0, postDataBytes.Length);
            }

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream, Encoding.UTF8))
            {
                responseContent = reader.ReadToEnd();
            }

            var result = JsonConvert.DeserializeObject<noteResponse>(responseContent);
            if (result.success)
            {
                check = true;

            }
            // Handle the result as needed

            return check;
        }
    }

    public class LoginResponse
    {
        public string status { get; set; }
        public string message { get; set; }
        public Info info { get; set; }
    }

    public class Info
    {
        public int id { get; set; }
        public int balance { get; set; }
        public string fullname { get; set; }
        public string role { get; set; }
        public string password { get; set; }
    }




    public class orderResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
        public string[] order_numbers { get; set; }
    }

    public class getaccountResponse
    {
        public string status { get; set; }
        public string message { get; set; }
        public Account[] account { get; set; }
    }

    public class Account
    {
        public int id { get; set; }
        public string account { get; set; }
        public string password { get; set; }
        public string cookie { get; set; }
        public string price { get; set; }
        public string note { get; set; }
        public int report { get; set; }
    }


    public class noteResponse
    {
        public bool success { get; set; }
        public string message { get; set; }
    }


    public class buyResponse
    {
        public string status { get; set; }
        public string message { get; set; }
        public string Đãmua { get; set; }
        public int Tổngtiền { get; set; }
    }
    public class product
    {
        public bool status { get; set; }
        public Datum[] data { get; set; }
    }
    public class Datum
    {
        public string name { get; set; }
        public string model { get; set; }
        public string price { get; set; }
        public string kind { get; set; }
        public string stock { get; set; }
    }
}
