; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [240 x i32] [
	i32 10166715, ; 0: System.Net.NameResolution.dll => 0x9b21bb => 16
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 72
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 101
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 28
	i32 42639949, ; 4: System.Threading.Thread => 0x28aa24d => 18
	i32 57263871, ; 5: Xamarin.Forms.Core.dll => 0x369c6ff => 96
	i32 68219467, ; 6: System.Security.Cryptography.Primitives => 0x410f24b => 8
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 149972175, ; 9: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 8
	i32 155389437, ; 10: chichichi.Android => 0x9430dfd => 0
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 209399409, ; 13: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 220171995, ; 14: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 230216969, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 67
	i32 230752869, ; 16: Microsoft.CSharp.dll => 0xdc10265 => 24
	i32 231814094, ; 17: System.Globalization => 0xdd133ce => 13
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 109
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 56
	i32 276479776, ; 20: System.Threading.Timer.dll => 0x107abf20 => 5
	i32 278686392, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 71
	i32 280482487, ; 22: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 65
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 24: System.Numerics => 0x132b30dd => 38
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 379916513, ; 26: System.Threading.Thread.dll => 0x16a510e1 => 18
	i32 392610295, ; 27: System.Threading.ThreadPool.dll => 0x1766c1f7 => 19
	i32 441335492, ; 28: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 55
	i32 442521989, ; 29: Xamarin.Essentials => 0x1a605985 => 95
	i32 442565967, ; 30: System.Collections => 0x1a61054f => 6
	i32 450948140, ; 31: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 27
	i32 469710990, ; 33: System.dll => 0x1bff388e => 35
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 65
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 76
	i32 526420162, ; 36: System.Transactions.dll => 0x1f6088c2 => 105
	i32 540030774, ; 37: System.IO.FileSystem.dll => 0x20303736 => 2
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 116
	i32 597553362, ; 39: chichichi.Android.dll => 0x239df0d2 => 0
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 107
	i32 613668793, ; 41: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 113
	i32 627609679, ; 42: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 630863994, ; 43: SharpAdbClient.dll => 0x259a387a => 31
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 92
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 775507847, ; 47: System.IO.Compression => 0x2e394f87 => 36
	i32 809851609, ; 48: System.Drawing.Common.dll => 0x30455ad9 => 3
	i32 843511501, ; 49: Xamarin.AndroidX.Print => 0x3246f6cd => 83
	i32 877678880, ; 50: System.Globalization.dll => 0x34505120 => 13
	i32 928116545, ; 51: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 101
	i32 944513931, ; 52: System.Xml.XPath.XmlDocument.dll => 0x384c238b => 117
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 28
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 974778368, ; 55: FormsViewGroup.dll => 0x3a19f000 => 22
	i32 992768348, ; 56: System.Collections.dll => 0x3b2c715c => 6
	i32 994442037, ; 57: System.IO.FileSystem => 0x3b45fb35 => 2
	i32 1012816738, ; 58: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1035644815, ; 59: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1042160112, ; 60: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 98
	i32 1052210849, ; 61: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1098259244, ; 62: System => 0x41761b2c => 35
	i32 1115359164, ; 63: SharpAdbClient => 0x427b07bc => 31
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 90
	i32 1178241025, ; 65: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1204270330, ; 66: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1209675182, ; 67: SshNet.Security.Cryptography => 0x481a2dae => 32
	i32 1267360935, ; 68: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 91
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1324164729, ; 70: System.Linq => 0x4eed2679 => 115
	i32 1364015309, ; 71: System.IO => 0x514d38cd => 110
	i32 1365406463, ; 72: System.ServiceModel.Internals.dll => 0x516272ff => 102
	i32 1376866003, ; 73: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1395857551, ; 74: Xamarin.AndroidX.Media.dll => 0x5333188f => 77
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1457743152, ; 76: System.Runtime.Extensions.dll => 0x56e36530 => 116
	i32 1460219004, ; 77: Xamarin.Forms.Xaml => 0x57092c7c => 99
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 36
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1543031311, ; 80: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 111
	i32 1550322496, ; 81: System.Reflection.Extensions.dll => 0x5c680b40 => 17
	i32 1565862583, ; 82: System.IO.FileSystem.Primitives => 0x5d552ab7 => 12
	i32 1582372066, ; 83: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 61
	i32 1592978981, ; 84: System.Runtime.Serialization.dll => 0x5ef2ee25 => 20
	i32 1622152042, ; 85: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 86: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 94
	i32 1636350590, ; 87: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 88: System.Net.Http.dll => 0x61b9038d => 37
	i32 1639986890, ; 89: System.Text.RegularExpressions => 0x61c036ca => 111
	i32 1657153582, ; 90: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 91: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 88
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 100
	i32 1670060433, ; 93: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 56
	i32 1677501392, ; 94: System.Net.Primitives.dll => 0x63fca3d0 => 10
	i32 1701541528, ; 95: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1726116996, ; 96: System.Reflection.dll => 0x66e27484 => 118
	i32 1729485958, ; 97: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1763938596, ; 98: System.Diagnostics.TraceSource.dll => 0x69239124 => 14
	i32 1765942094, ; 99: System.Reflection.Extensions => 0x6942234e => 17
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1776026572, ; 101: System.Core.dll => 0x69dc03cc => 34
	i32 1788241197, ; 102: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1808609942, ; 103: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813201214, ; 104: Xamarin.Google.Android.Material => 0x6c13413e => 100
	i32 1818569960, ; 105: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1824175904, ; 106: System.Text.Encoding.Extensions => 0x6cbab720 => 15
	i32 1828688058, ; 107: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 25
	i32 1867746548, ; 108: Xamarin.Essentials.dll => 0x6f538cf4 => 95
	i32 1878053835, ; 109: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 99
	i32 1885094984, ; 110: System.Xml.XPath.XmlDocument => 0x705c4448 => 117
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1910014967, ; 112: chichichi => 0x71d883f7 => 21
	i32 1919157823, ; 113: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 78
	i32 2011961780, ; 114: System.Buffers.dll => 0x77ec19b4 => 33
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2070888862, ; 117: System.Diagnostics.TraceSource => 0x7b6f419e => 14
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 39
	i32 2097448633, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 66
	i32 2126786730, ; 121: Xamarin.Forms.Platform.Android => 0x7ec430aa => 97
	i32 2192057212, ; 122: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 25
	i32 2201231467, ; 123: System.Net.Http => 0x8334206b => 37
	i32 2217644978, ; 124: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 90
	i32 2244775296, ; 125: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 76
	i32 2256548716, ; 126: Xamarin.AndroidX.MultiDex => 0x8680336c => 78
	i32 2261435625, ; 127: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 68
	i32 2279755925, ; 128: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2295906218, ; 129: System.Net.Sockets => 0x88d8bfaa => 112
	i32 2315684594, ; 130: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2353062107, ; 131: System.Net.Primitives => 0x8c40e0db => 10
	i32 2368005991, ; 132: System.Xml.ReaderWriter.dll => 0x8d24e767 => 114
	i32 2409053734, ; 133: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 82
	i32 2454642406, ; 134: System.Text.Encoding.dll => 0x924edee6 => 7
	i32 2458678730, ; 135: System.Net.Sockets.dll => 0x928c75ca => 112
	i32 2465532216, ; 136: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 55
	i32 2471841756, ; 137: netstandard.dll => 0x93554fdc => 103
	i32 2475788418, ; 138: Java.Interop.dll => 0x93918882 => 23
	i32 2501346920, ; 139: System.Data.DataSetExtensions => 0x95178668 => 106
	i32 2505896520, ; 140: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 72
	i32 2562349572, ; 141: Microsoft.CSharp => 0x98ba5a04 => 24
	i32 2575163826, ; 142: Renci.SshNet.Async.dll => 0x997de1b2 => 29
	i32 2581819634, ; 143: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 91
	i32 2585220780, ; 144: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 15
	i32 2589602615, ; 145: System.Threading.ThreadPool => 0x9a5a3337 => 19
	i32 2620871830, ; 146: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2624644809, ; 147: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 63
	i32 2633051222, ; 148: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 71
	i32 2693849962, ; 149: System.IO.dll => 0xa090e36a => 110
	i32 2701096212, ; 150: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 88
	i32 2715334215, ; 151: System.Threading.Tasks.dll => 0xa1d8b647 => 1
	i32 2732626843, ; 152: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 153: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2766581644, ; 154: Xamarin.Forms.Core => 0xa4e6af8c => 96
	i32 2778768386, ; 155: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 93
	i32 2810250172, ; 156: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2819470561, ; 157: System.Xml.dll => 0xa80db4e1 => 41
	i32 2824502124, ; 158: System.Xml.XmlDocument => 0xa85a7b6c => 11
	i32 2853208004, ; 159: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 93
	i32 2855708567, ; 160: Xamarin.AndroidX.Transition => 0xaa36a797 => 89
	i32 2901442782, ; 161: System.Reflection => 0xacf080de => 118
	i32 2903344695, ; 162: System.ComponentModel.Composition => 0xad0d8637 => 108
	i32 2905242038, ; 163: mscorlib.dll => 0xad2a79b6 => 27
	i32 2916838712, ; 164: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 94
	i32 2919462931, ; 165: System.Numerics.Vectors.dll => 0xae037813 => 39
	i32 2921128767, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2972252294, ; 167: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 113
	i32 2978675010, ; 168: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 3024354802, ; 169: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 67
	i32 3034446096, ; 170: SshNet.Security.Cryptography.dll => 0xb4ddf910 => 32
	i32 3044182254, ; 171: FormsViewGroup => 0xb57288ee => 22
	i32 3057625584, ; 172: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3075834255, ; 173: System.Threading.Tasks => 0xb755818f => 1
	i32 3111772706, ; 174: System.Runtime.Serialization => 0xb979e222 => 20
	i32 3148095383, ; 175: Renci.SshNet.dll => 0xbba41f97 => 30
	i32 3204380047, ; 176: System.Data.dll => 0xbefef58f => 104
	i32 3209718065, ; 177: System.Xml.XmlDocument.dll => 0xbf506931 => 11
	i32 3211777861, ; 178: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 61
	i32 3220365878, ; 179: System.Threading => 0xbff2e236 => 9
	i32 3247949154, ; 180: Mono.Security => 0xc197c562 => 119
	i32 3258312781, ; 181: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3267021929, ; 182: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3299363146, ; 183: System.Text.Encoding => 0xc4a8494a => 7
	i32 3317135071, ; 184: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3317144872, ; 185: System.Data => 0xc5b79d28 => 104
	i32 3340431453, ; 186: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3346324047, ; 187: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3353484488, ; 188: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 66
	i32 3362522851, ; 189: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 190: Java.Interop => 0xc8a662e9 => 23
	i32 3374999561, ; 191: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3379011597, ; 192: chichichi.dll => 0xc967a00d => 21
	i32 3390289853, ; 193: Renci.SshNet => 0xca13b7bd => 30
	i32 3404865022, ; 194: System.ServiceModel.Internals => 0xcaf21dfe => 102
	i32 3411732934, ; 195: Renci.SshNet.Async => 0xcb5ae9c6 => 29
	i32 3429136800, ; 196: System.Xml => 0xcc6479a0 => 41
	i32 3430777524, ; 197: netstandard => 0xcc7d82b4 => 103
	i32 3441283291, ; 198: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 63
	i32 3476120550, ; 199: Mono.Android => 0xcf3163e6 => 26
	i32 3486566296, ; 200: System.Transactions => 0xcfd0c798 => 105
	i32 3493954962, ; 201: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3501239056, ; 202: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3509114376, ; 203: System.Xml.Linq => 0xd128d608 => 42
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 97
	i32 3560100363, ; 205: System.Threading.Timer => 0xd432d20b => 5
	i32 3567349600, ; 206: System.ComponentModel.Composition.dll => 0xd4a16f60 => 108
	i32 3608519521, ; 207: System.Linq.dll => 0xd715a361 => 115
	i32 3618140916, ; 208: Xamarin.AndroidX.Preference => 0xd7a872f4 => 82
	i32 3627220390, ; 209: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 83
	i32 3632359727, ; 210: Xamarin.Forms.Platform => 0xd881692f => 98
	i32 3633644679, ; 211: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3638274909, ; 212: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 12
	i32 3641597786, ; 213: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3672681054, ; 214: Mono.Android.dll => 0xdae8aa5e => 26
	i32 3676310014, ; 215: System.Web.Services.dll => 0xdb2009fe => 109
	i32 3682565725, ; 216: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 217: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 218: System.Drawing.Common => 0xdbe768e9 => 3
	i32 3718780102, ; 219: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3724971120, ; 220: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3732100267, ; 221: System.Net.NameResolution => 0xde7354ab => 16
	i32 3758932259, ; 222: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 68
	i32 3786282454, ; 223: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3822602673, ; 224: Xamarin.AndroidX.Media => 0xe3d849b1 => 77
	i32 3829621856, ; 225: System.Numerics.dll => 0xe4436460 => 38
	i32 3885922214, ; 226: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 89
	i32 3896760992, ; 227: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3920810846, ; 228: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 107
	i32 3921031405, ; 229: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 92
	i32 3928044579, ; 230: System.Xml.ReaderWriter => 0xea213423 => 114
	i32 3931092270, ; 231: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3945713374, ; 232: System.Data.DataSetExtensions.dll => 0xeb2ecede => 106
	i32 3955647286, ; 233: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 4073602200, ; 234: System.Threading.dll => 0xf2ce3c98 => 9
	i32 4105002889, ; 235: Mono.Security.dll => 0xf4ad5f89 => 119
	i32 4151237749, ; 236: System.Core => 0xf76edc75 => 34
	i32 4182413190, ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4260525087, ; 238: System.Buffers => 0xfdf2741f => 33
	i32 4292120959 ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [240 x i32] [
	i32 16, i32 72, i32 101, i32 28, i32 18, i32 96, i32 8, i32 86, ; 0..7
	i32 86, i32 8, i32 0, i32 53, i32 87, i32 51, i32 4, i32 67, ; 8..15
	i32 24, i32 13, i32 109, i32 56, i32 5, i32 71, i32 65, i32 43, ; 16..23
	i32 38, i32 69, i32 18, i32 19, i32 55, i32 95, i32 6, i32 64, ; 24..31
	i32 27, i32 35, i32 65, i32 76, i32 105, i32 2, i32 116, i32 0, ; 32..39
	i32 107, i32 113, i32 60, i32 31, i32 92, i32 48, i32 42, i32 36, ; 40..47
	i32 3, i32 83, i32 13, i32 101, i32 117, i32 28, i32 69, i32 22, ; 48..55
	i32 6, i32 2, i32 85, i32 47, i32 98, i32 73, i32 35, i32 31, ; 56..63
	i32 90, i32 80, i32 48, i32 32, i32 91, i32 62, i32 115, i32 110, ; 64..71
	i32 102, i32 85, i32 77, i32 57, i32 116, i32 99, i32 36, i32 46, ; 72..79
	i32 111, i32 17, i32 12, i32 61, i32 20, i32 75, i32 94, i32 59, ; 80..87
	i32 37, i32 111, i32 40, i32 88, i32 100, i32 56, i32 10, i32 4, ; 88..95
	i32 118, i32 52, i32 14, i32 17, i32 87, i32 34, i32 64, i32 75, ; 96..103
	i32 100, i32 81, i32 15, i32 25, i32 95, i32 99, i32 117, i32 49, ; 104..111
	i32 21, i32 78, i32 33, i32 73, i32 70, i32 14, i32 40, i32 39, ; 112..119
	i32 66, i32 97, i32 25, i32 37, i32 90, i32 76, i32 78, i32 68, ; 120..127
	i32 84, i32 112, i32 44, i32 10, i32 114, i32 82, i32 7, i32 112, ; 128..135
	i32 55, i32 103, i32 23, i32 106, i32 72, i32 24, i32 29, i32 91, ; 136..143
	i32 15, i32 19, i32 59, i32 63, i32 71, i32 110, i32 88, i32 1, ; 144..151
	i32 43, i32 46, i32 96, i32 93, i32 57, i32 41, i32 11, i32 93, ; 152..159
	i32 89, i32 118, i32 108, i32 27, i32 94, i32 39, i32 45, i32 113, ; 160..167
	i32 62, i32 67, i32 32, i32 22, i32 79, i32 1, i32 20, i32 30, ; 168..175
	i32 104, i32 11, i32 61, i32 9, i32 119, i32 52, i32 50, i32 7, ; 176..183
	i32 60, i32 104, i32 49, i32 80, i32 66, i32 58, i32 23, i32 84, ; 184..191
	i32 21, i32 30, i32 102, i32 29, i32 41, i32 103, i32 63, i32 26, ; 192..199
	i32 105, i32 54, i32 50, i32 42, i32 97, i32 5, i32 108, i32 115, ; 200..207
	i32 82, i32 83, i32 98, i32 45, i32 12, i32 70, i32 26, i32 109, ; 208..215
	i32 51, i32 54, i32 3, i32 44, i32 79, i32 16, i32 68, i32 53, ; 216..223
	i32 77, i32 38, i32 89, i32 58, i32 107, i32 92, i32 114, i32 81, ; 224..231
	i32 106, i32 47, i32 9, i32 119, i32 34, i32 74, i32 33, i32 74 ; 240..239
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
