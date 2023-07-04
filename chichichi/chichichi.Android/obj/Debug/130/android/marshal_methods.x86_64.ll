; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [240 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 63
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 26
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 53
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 85
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 86
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 72
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 3
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 66
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 18
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 62
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 105
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 98
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 119
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 100
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 48
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 20
	i64 1476839205573959279, ; 16: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 10
	i64 1537168428375924959, ; 17: System.Threading.Thread.dll => 0x15551e8a954ae0df => 18
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 46
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 74
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 67
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 28
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 47
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 85
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 44
	i64 1972385128188460614, ; 25: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 113
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 73
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 28
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 78
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 51
	i64 2213946620164994683, ; 30: chichichi.dll => 0x1eb984b8969c767b => 21
	i64 2262844636196693701, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 62
	i64 2284400282711631002, ; 32: System.Web.Services => 0x1fb3d1f42fd4249a => 109
	i64 2315304989185124968, ; 33: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 2
	i64 2329709569556905518, ; 34: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 70
	i64 2466404685302267823, ; 35: SshNet.Security.Cryptography.dll => 0x223a6dfe63ccffaf => 32
	i64 2470498323731680442, ; 36: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 57
	i64 2479423007379663237, ; 37: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 90
	i64 2497223385847772520, ; 38: System.Runtime => 0x22a7eb7046413568 => 40
	i64 2547086958574651984, ; 39: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 43
	i64 2592350477072141967, ; 40: System.Xml.dll => 0x23f9e10627330e8f => 41
	i64 2624866290265602282, ; 41: mscorlib.dll => 0x246d65fbde2db8ea => 27
	i64 2632269733008246987, ; 42: System.Net.NameResolution => 0x2487b36034f808cb => 16
	i64 2646133429690896551, ; 43: Renci.SshNet.dll => 0x24b8f455a10310a7 => 30
	i64 2694427813909235223, ; 44: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 82
	i64 2836324886867451042, ; 45: System.Xml.XPath.XmlDocument.dll => 0x275ca67505559ca2 => 117
	i64 2960931600190307745, ; 46: Xamarin.Forms.Core => 0x2917579a49927da1 => 96
	i64 3017704767998173186, ; 47: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 100
	i64 3289520064315143713, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 69
	i64 3303437397778967116, ; 49: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 45
	i64 3311221304742556517, ; 50: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 39
	i64 3328853167529574890, ; 51: System.Net.Sockets.dll => 0x2e327651a008c1ea => 112
	i64 3493805808809882663, ; 52: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 88
	i64 3522470458906976663, ; 53: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 87
	i64 3531994851595924923, ; 54: System.Numerics => 0x31042a9aade235bb => 38
	i64 3571415421602489686, ; 55: System.Runtime.dll => 0x319037675df7e556 => 40
	i64 3647754201059316852, ; 56: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 114
	i64 3649596011227041021, ; 57: Renci.SshNet.Async.dll => 0x32a5f83c5edeccfd => 29
	i64 3716579019761409177, ; 58: netstandard.dll => 0x3393f0ed5c8c5c99 => 103
	i64 3727469159507183293, ; 59: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 84
	i64 3772598417116884899, ; 60: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 63
	i64 3966756783446795410, ; 61: chichichi => 0x370cc0471bb7a492 => 21
	i64 4006972109285359177, ; 62: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 11
	i64 4167269041631776580, ; 63: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 19
	i64 4503287109452707777, ; 64: SharpAdbClient.dll => 0x3e7ee3c4408637c1 => 31
	i64 4525561845656915374, ; 65: System.ServiceModel.Internals => 0x3ece06856b710dae => 102
	i64 4636684751163556186, ; 66: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 92
	i64 4782108999019072045, ; 67: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 50
	i64 4794310189461587505, ; 68: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 43
	i64 4795410492532947900, ; 69: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 87
	i64 4814660307502931973, ; 70: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 16
	i64 5142919913060024034, ; 71: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 97
	i64 5203618020066742981, ; 72: Xamarin.Essentials => 0x4836f704f0e652c5 => 95
	i64 5205316157927637098, ; 73: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 76
	i64 5348796042099802469, ; 74: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 77
	i64 5376510917114486089, ; 75: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 90
	i64 5408338804355907810, ; 76: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 89
	i64 5446034149219586269, ; 77: System.Diagnostics.Debug => 0x4b94333452e150dd => 4
	i64 5451019430259338467, ; 78: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 56
	i64 5507995362134886206, ; 79: System.Core.dll => 0x4c705499688c873e => 34
	i64 5527431512186326818, ; 80: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 12
	i64 5650097808083101034, ; 81: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 113
	i64 5692067934154308417, ; 82: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 94
	i64 5757522595884336624, ; 83: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 54
	i64 5814345312393086621, ; 84: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 82
	i64 5896680224035167651, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 71
	i64 5984759512290286505, ; 86: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 8
	i64 6085203216496545422, ; 87: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 98
	i64 6086316965293125504, ; 88: FormsViewGroup.dll => 0x5476f10882baef80 => 22
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 72
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 70
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 51
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 60
	i64 6591024623626361694, ; 93: System.Web.Services.dll => 0x5b7805f9751a1b5e => 109
	i64 6659513131007730089, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 66
	i64 6786606130239981554, ; 95: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 14
	i64 6876862101832370452, ; 96: System.Xml.Linq => 0x5f6f85a57d108914 => 42
	i64 6894844156784520562, ; 97: System.Numerics.Vectors => 0x5faf683aead1ad72 => 39
	i64 7036436454368433159, ; 98: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 68
	i64 7103753931438454322, ; 99: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 65
	i64 7109577749756896764, ; 100: chichichi.Android => 0x62aa4b4b9547e5fc => 0
	i64 7112547816752919026, ; 101: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 2
	i64 7270811800166795866, ; 102: System.Linq => 0x64e71ccf51a90a5a => 115
	i64 7338192458477945005, ; 103: System.Reflection => 0x65d67f295d0740ad => 118
	i64 7488575175965059935, ; 104: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 42
	i64 7635363394907363464, ; 105: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 96
	i64 7637365915383206639, ; 106: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 95
	i64 7654504624184590948, ; 107: System.Net.Http => 0x6a3a4366801b8264 => 37
	i64 7735176074855944702, ; 108: Microsoft.CSharp => 0x6b58dda848e391fe => 24
	i64 7820441508502274321, ; 109: System.Data => 0x6c87ca1e14ff8111 => 104
	i64 7836164640616011524, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 46
	i64 8044118961405839122, ; 111: System.ComponentModel.Composition => 0x6fa2739369944712 => 108
	i64 8064050204834738623, ; 112: System.Collections.dll => 0x6fe942efa61731bf => 6
	i64 8083354569033831015, ; 113: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 69
	i64 8103644804370223335, ; 114: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 106
	i64 8113615946733131500, ; 115: System.Reflection.Extensions => 0x70995ab73cf916ec => 17
	i64 8167236081217502503, ; 116: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 23
	i64 8185542183669246576, ; 117: System.Collections => 0x7198e33f4794aa70 => 6
	i64 8290740647658429042, ; 118: System.Runtime.Extensions => 0x730ea0b15c929a72 => 116
	i64 8398329775253868912, ; 119: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 55
	i64 8400357532724379117, ; 120: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 81
	i64 8601935802264776013, ; 121: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 89
	i64 8626175481042262068, ; 122: Java.Interop => 0x77b654e585b55834 => 23
	i64 8638972117149407195, ; 123: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 24
	i64 8639588376636138208, ; 124: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 80
	i64 8684531736582871431, ; 125: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 107
	i64 9235859449495641090, ; 126: SharpAdbClient => 0x802c5d3c529f5c02 => 31
	i64 9312692141327339315, ; 127: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 94
	i64 9324707631942237306, ; 128: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 47
	i64 9584643793929893533, ; 129: System.IO.dll => 0x85037ebfbbd7f69d => 110
	i64 9659729154652888475, ; 130: System.Text.RegularExpressions => 0x860e407c9991dd9b => 111
	i64 9662334977499516867, ; 131: System.Numerics.dll => 0x8617827802b0cfc3 => 38
	i64 9678050649315576968, ; 132: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 57
	i64 9711637524876806384, ; 133: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 77
	i64 9808709177481450983, ; 134: Mono.Android.dll => 0x881f890734e555e7 => 26
	i64 9825649861376906464, ; 135: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 54
	i64 9834056768316610435, ; 136: System.Transactions.dll => 0x8879968718899783 => 105
	i64 9998632235833408227, ; 137: Mono.Security => 0x8ac2470b209ebae3 => 119
	i64 10038780035334861115, ; 138: System.Net.Http.dll => 0x8b50e941206af13b => 37
	i64 10229024438826829339, ; 139: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 60
	i64 10360651442923773544, ; 140: System.Text.Encoding => 0x8fc86d98211c1e68 => 7
	i64 10376576884623852283, ; 141: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 88
	i64 10430153318873392755, ; 142: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 58
	i64 10566960649245365243, ; 143: System.Globalization.dll => 0x92a562b96dcd13fb => 13
	i64 10714184849103829812, ; 144: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 116
	i64 10785150219063592792, ; 145: System.Net.Primitives => 0x95ac8cfb68830758 => 10
	i64 10847732767863316357, ; 146: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 48
	i64 11002576679268595294, ; 147: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 25
	i64 11023048688141570732, ; 148: System.Core => 0x98f9bc61168392ac => 34
	i64 11037814507248023548, ; 149: System.Xml => 0x992e31d0412bf7fc => 41
	i64 11162124722117608902, ; 150: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 93
	i64 11329751333533450475, ; 151: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 5
	i64 11340910727871153756, ; 152: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 59
	i64 11342127784496498633, ; 153: System.Xml.XPath.XmlDocument => 0x9d675520780087c9 => 117
	i64 11392833485892708388, ; 154: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 83
	i64 11529969570048099689, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 93
	i64 11578238080964724296, ; 156: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 68
	i64 11580057168383206117, ; 157: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 44
	i64 11597940890313164233, ; 158: netstandard => 0xa0f429ca8d1805c9 => 103
	i64 11672361001936329215, ; 159: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 65
	i64 11743665907891708234, ; 160: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 1
	i64 12102847907131387746, ; 161: System.Buffers => 0xa7f5f40c43256f62 => 33
	i64 12123043025855404482, ; 162: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 17
	i64 12137774235383566651, ; 163: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 91
	i64 12451044538927396471, ; 164: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 64
	i64 12466513435562512481, ; 165: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 75
	i64 12487638416075308985, ; 166: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 61
	i64 12517810545449516888, ; 167: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 14
	i64 12538491095302438457, ; 168: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12550732019250633519, ; 169: System.IO.Compression => 0xae2d28465e8e1b2f => 36
	i64 12700543734426720211, ; 170: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 53
	i64 12708238894395270091, ; 171: System.IO => 0xb05cbbf17d3ba3cb => 110
	i64 12708922737231849740, ; 172: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 15
	i64 12963446364377008305, ; 173: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 3
	i64 13153566470908607129, ; 174: SshNet.Security.Cryptography => 0xb68adb03c3fefa99 => 32
	i64 13370592475155966277, ; 175: System.Runtime.Serialization => 0xb98de304062ea945 => 20
	i64 13401370062847626945, ; 176: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 91
	i64 13404347523447273790, ; 177: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 55
	i64 13454009404024712428, ; 178: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 101
	i64 13491513212026656886, ; 179: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 49
	i64 13572454107664307259, ; 180: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 84
	i64 13613826926226999557, ; 181: Renci.SshNet.Async => 0xbcee0775d3688905 => 29
	i64 13647894001087880694, ; 182: System.Data.dll => 0xbd670f48cb071df6 => 104
	i64 13959074834287824816, ; 183: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 64
	i64 13967638549803255703, ; 184: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 97
	i64 14124974489674258913, ; 185: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14125464355221830302, ; 186: System.Threading.dll => 0xc407bafdbc707a9e => 9
	i64 14172845254133543601, ; 187: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 78
	i64 14254574811015963973, ; 188: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 15
	i64 14261073672896646636, ; 189: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 83
	i64 14327695147300244862, ; 190: System.Reflection.dll => 0xc6d632d338eb4d7e => 118
	i64 14486659737292545672, ; 191: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 71
	i64 14561513370130550166, ; 192: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 8
	i64 14644440854989303794, ; 193: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 76
	i64 14792063746108907174, ; 194: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 101
	i64 14852515768018889994, ; 195: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 59
	i64 14987728460634540364, ; 196: System.IO.Compression.dll => 0xcfff1ba06622494c => 36
	i64 14988210264188246988, ; 197: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 61
	i64 15044096739141154273, ; 198: Renci.SshNet => 0xd0c75e46f71ef5e1 => 30
	i64 15133485256822086103, ; 199: System.Linq.dll => 0xd204f0a9127dd9d7 => 115
	i64 15370334346939861994, ; 200: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 58
	i64 15526743539506359484, ; 201: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 7
	i64 15557562860424774966, ; 202: System.Net.Sockets => 0xd7e790fe7a6dc536 => 112
	i64 15582737692548360875, ; 203: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 74
	i64 15609085926864131306, ; 204: System.dll => 0xd89e9cf3334914ea => 35
	i64 15661133872274321916, ; 205: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 114
	i64 15755368083429170162, ; 206: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 12
	i64 15777549416145007739, ; 207: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 86
	i64 15810740023422282496, ; 208: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 99
	i64 15817206913877585035, ; 209: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 1
	i64 16154507427712707110, ; 210: System => 0xe03056ea4e39aa26 => 35
	i64 16321164108206115771, ; 211: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 25
	i64 16404909703677774078, ; 212: chichichi.Android.dll => 0xe3a9f275641288fe => 0
	i64 16565028646146589191, ; 213: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 108
	i64 16621146507174665210, ; 214: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 56
	i64 16677317093839702854, ; 215: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 81
	i64 16822611501064131242, ; 216: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 106
	i64 16833383113903931215, ; 217: mscorlib => 0xe99c30c1484d7f4f => 27
	i64 16890310621557459193, ; 218: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 111
	i64 17024911836938395553, ; 219: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 45
	i64 17031351772568316411, ; 220: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 79
	i64 17037200463775726619, ; 221: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 67
	i64 17470386307322966175, ; 222: System.Threading.Timer => 0xf27347c8d0d5709f => 5
	i64 17544493274320527064, ; 223: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 50
	i64 17627500474728259406, ; 224: System.Globalization => 0xf4a176498a351f4e => 13
	i64 17685921127322830888, ; 225: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 4
	i64 17704177640604968747, ; 226: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 75
	i64 17710060891934109755, ; 227: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 73
	i64 17838668724098252521, ; 228: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 33
	i64 17882897186074144999, ; 229: FormsViewGroup => 0xf82cd03e3ac830e7 => 22
	i64 17892495832318972303, ; 230: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 99
	i64 17928294245072900555, ; 231: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 107
	i64 17992315986609351877, ; 232: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 11
	i64 18025913125965088385, ; 233: System.Threading => 0xfa28e87b91334681 => 9
	i64 18116111925905154859, ; 234: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 49
	i64 18121036031235206392, ; 235: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 79
	i64 18129453464017766560, ; 236: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 102
	i64 18225059387460068507, ; 237: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 19
	i64 18305135509493619199, ; 238: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 80
	i64 18380184030268848184 ; 239: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 92
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [240 x i32] [
	i32 63, i32 26, i32 53, i32 85, i32 86, i32 72, i32 3, i32 66, ; 0..7
	i32 18, i32 62, i32 105, i32 98, i32 119, i32 100, i32 48, i32 20, ; 8..15
	i32 10, i32 18, i32 46, i32 74, i32 67, i32 28, i32 47, i32 85, ; 16..23
	i32 44, i32 113, i32 73, i32 28, i32 78, i32 51, i32 21, i32 62, ; 24..31
	i32 109, i32 2, i32 70, i32 32, i32 57, i32 90, i32 40, i32 43, ; 32..39
	i32 41, i32 27, i32 16, i32 30, i32 82, i32 117, i32 96, i32 100, ; 40..47
	i32 69, i32 45, i32 39, i32 112, i32 88, i32 87, i32 38, i32 40, ; 48..55
	i32 114, i32 29, i32 103, i32 84, i32 63, i32 21, i32 11, i32 19, ; 56..63
	i32 31, i32 102, i32 92, i32 50, i32 43, i32 87, i32 16, i32 97, ; 64..71
	i32 95, i32 76, i32 77, i32 90, i32 89, i32 4, i32 56, i32 34, ; 72..79
	i32 12, i32 113, i32 94, i32 54, i32 82, i32 71, i32 8, i32 98, ; 80..87
	i32 22, i32 72, i32 70, i32 51, i32 60, i32 109, i32 66, i32 14, ; 88..95
	i32 42, i32 39, i32 68, i32 65, i32 0, i32 2, i32 115, i32 118, ; 96..103
	i32 42, i32 96, i32 95, i32 37, i32 24, i32 104, i32 46, i32 108, ; 104..111
	i32 6, i32 69, i32 106, i32 17, i32 23, i32 6, i32 116, i32 55, ; 112..119
	i32 81, i32 89, i32 23, i32 24, i32 80, i32 107, i32 31, i32 94, ; 120..127
	i32 47, i32 110, i32 111, i32 38, i32 57, i32 77, i32 26, i32 54, ; 128..135
	i32 105, i32 119, i32 37, i32 60, i32 7, i32 88, i32 58, i32 13, ; 136..143
	i32 116, i32 10, i32 48, i32 25, i32 34, i32 41, i32 93, i32 5, ; 144..151
	i32 59, i32 117, i32 83, i32 93, i32 68, i32 44, i32 103, i32 65, ; 152..159
	i32 1, i32 33, i32 17, i32 91, i32 64, i32 75, i32 61, i32 14, ; 160..167
	i32 52, i32 36, i32 53, i32 110, i32 15, i32 3, i32 32, i32 20, ; 168..175
	i32 91, i32 55, i32 101, i32 49, i32 84, i32 29, i32 104, i32 64, ; 176..183
	i32 97, i32 52, i32 9, i32 78, i32 15, i32 83, i32 118, i32 71, ; 184..191
	i32 8, i32 76, i32 101, i32 59, i32 36, i32 61, i32 30, i32 115, ; 192..199
	i32 58, i32 7, i32 112, i32 74, i32 35, i32 114, i32 12, i32 86, ; 200..207
	i32 99, i32 1, i32 35, i32 25, i32 0, i32 108, i32 56, i32 81, ; 208..215
	i32 106, i32 27, i32 111, i32 45, i32 79, i32 67, i32 5, i32 50, ; 216..223
	i32 13, i32 4, i32 75, i32 73, i32 33, i32 22, i32 99, i32 107, ; 224..231
	i32 11, i32 9, i32 49, i32 79, i32 102, i32 19, i32 80, i32 92 ; 240..239
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
