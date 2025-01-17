; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [329 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [652 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 249
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 283
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 324
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 204
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 267
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 267
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 287
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 164065134, ; 21: Unity.Abstractions => 0x9c76f6e => 206
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 223
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 269
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 321
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 322
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 221
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 243
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 36: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 175
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 226
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 245
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 242
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 293
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 321
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 212
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 306
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 244
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 305
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 325
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 317
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 227
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 240
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 67: System.dll => 0x1bff388e => 164
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 242
	i32 486930444, ; 69: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 255
	i32 498788369, ; 70: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 71: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 304
	i32 503918385, ; 72: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 298
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 197
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 75: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 287
	i32 530272170, ; 76: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 77: Microsoft.Extensions.Logging => 0x20216150 => 193
	i32 540030774, ; 78: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 79: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 80: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 81: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 82: Jsr305Binding => 0x213954e7 => 280
	i32 569601784, ; 83: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 278
	i32 571435654, ; 84: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 190
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 312
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 232
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 310
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 238
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 274
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 219
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 99: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 292
	i32 690569205, ; 100: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 101: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 289
	i32 693804605, ; 102: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 103: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 104: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 284
	i32 700358131, ; 105: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 106: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 307
	i32 709557578, ; 107: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 295
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 288
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 111: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 112: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 209
	i32 759454413, ; 113: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 114: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 115: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 116: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 316
	i32 789151979, ; 117: Microsoft.Extensions.Options => 0x2f0980eb => 196
	i32 790371945, ; 118: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 233
	i32 804008546, ; 119: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 179
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 247
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 260
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 63
	i32 880371118, ; 130: EasyCash => 0x347965ae => 0
	i32 904024072, ; 131: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 132: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 133: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 319
	i32 928116545, ; 134: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 283
	i32 952186615, ; 135: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 136: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 288
	i32 966729478, ; 137: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 281
	i32 967690846, ; 138: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 244
	i32 975236339, ; 139: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 140: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 141: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 142: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 143: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 144: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 145: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 192
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 264
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 294
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 282
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 217
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 251
	i32 1067306892, ; 156: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 157: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 158: Xamarin.Kotlin.StdLib => 0x409e66d8 => 285
	i32 1098259244, ; 159: System => 0x41761b2c => 164
	i32 1106973742, ; 160: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 184
	i32 1118262833, ; 161: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 307
	i32 1121599056, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 250
	i32 1127624469, ; 163: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 195
	i32 1149092582, ; 164: Xamarin.AndroidX.Window => 0x447dc2e6 => 277
	i32 1168523401, ; 165: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 313
	i32 1170634674, ; 166: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 167: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 188
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 273
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 258
	i32 1203215381, ; 170: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 311
	i32 1204270330, ; 171: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 219
	i32 1208641965, ; 172: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 173: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 174: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 309
	i32 1243150071, ; 175: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 278
	i32 1253011324, ; 176: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 177: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 293
	i32 1264511973, ; 178: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 268
	i32 1267360935, ; 179: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 272
	i32 1273260888, ; 180: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 224
	i32 1275534314, ; 181: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 289
	i32 1278448581, ; 182: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 216
	i32 1293217323, ; 183: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 235
	i32 1309188875, ; 184: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 185: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 277
	i32 1324164729, ; 186: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 187: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 188: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 189: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 323
	i32 1376866003, ; 190: Xamarin.AndroidX.SavedState => 0x52114ed3 => 264
	i32 1379779777, ; 191: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 192: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 193: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 228
	i32 1408764838, ; 194: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 195: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 196: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 197: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 291
	i32 1434145427, ; 198: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 199: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 281
	i32 1439761251, ; 200: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1440999970, ; 201: Unity.Container => 0x55e3ea22 => 207
	i32 1452070440, ; 202: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 203: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 204: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 189
	i32 1457743152, ; 205: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 206: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 207: es\Microsoft.Maui.Controls.resources => 0x57152abe => 297
	i32 1461234159, ; 208: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 209: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 210: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 211: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 218
	i32 1470490898, ; 212: Microsoft.Extensions.Primitives => 0x57a5e912 => 197
	i32 1479771757, ; 213: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 214: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 215: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 216: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 265
	i32 1493001747, ; 217: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 301
	i32 1514721132, ; 218: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 296
	i32 1521091094, ; 219: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 192
	i32 1536373174, ; 220: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 221: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 222: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 223: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 179
	i32 1550322496, ; 224: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 225: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 316
	i32 1565862583, ; 226: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 227: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 228: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 229: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 230: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 234
	i32 1592978981, ; 231: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 232: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 282
	i32 1601112923, ; 233: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 234: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 235: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 236: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 254
	i32 1622358360, ; 237: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 238: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 276
	i32 1632842087, ; 239: Microsoft.Extensions.Configuration.Json => 0x61533167 => 185
	i32 1635184631, ; 240: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 238
	i32 1636350590, ; 241: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 231
	i32 1639515021, ; 242: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 243: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 244: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 245: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 178
	i32 1657153582, ; 246: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 247: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 270
	i32 1658251792, ; 248: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 279
	i32 1670060433, ; 249: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 226
	i32 1675553242, ; 250: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 251: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 252: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 253: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 254: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 255: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 256: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 286
	i32 1701541528, ; 257: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 258: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 247
	i32 1726116996, ; 259: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 260: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 261: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 222
	i32 1736233607, ; 262: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 314
	i32 1743415430, ; 263: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 292
	i32 1744735666, ; 264: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 265: System.IO.Pipelines.dll => 0x68139a0d => 205
	i32 1746316138, ; 266: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 267: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 268: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 269: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 177
	i32 1763938596, ; 270: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 271: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 272: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 269
	i32 1770582343, ; 273: Microsoft.Extensions.Logging.dll => 0x6988f147 => 193
	i32 1776026572, ; 274: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 275: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 276: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 277: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 308
	i32 1788241197, ; 278: Xamarin.AndroidX.Fragment => 0x6a96652d => 240
	i32 1793755602, ; 279: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 300
	i32 1808609942, ; 280: Xamarin.AndroidX.Loader => 0x6bcd3296 => 254
	i32 1813058853, ; 281: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 285
	i32 1813201214, ; 282: Xamarin.Google.Android.Material => 0x6c13413e => 279
	i32 1818569960, ; 283: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 259
	i32 1818787751, ; 284: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 285: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 286: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 287: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 194
	i32 1842015223, ; 288: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 320
	i32 1847515442, ; 289: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 209
	i32 1853025655, ; 290: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 317
	i32 1858542181, ; 291: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 292: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 293: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 299
	i32 1879696579, ; 294: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 295: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 220
	i32 1888955245, ; 296: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 297: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 298: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 299: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 300: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 301: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 302: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 303: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 266
	i32 1968388702, ; 304: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 305: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 286
	i32 1985761444, ; 306: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 211
	i32 2003115576, ; 307: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 296
	i32 2011961780, ; 308: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 309: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 251
	i32 2025202353, ; 310: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 291
	i32 2031763787, ; 311: Xamarin.Android.Glide => 0x791a414b => 208
	i32 2045470958, ; 312: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 313: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 183
	i32 2055257422, ; 314: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 246
	i32 2060060697, ; 315: System.Windows.dll => 0x7aca0819 => 154
	i32 2065833063, ; 316: Unity.Container.dll => 0x7b221c67 => 207
	i32 2066184531, ; 317: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 295
	i32 2070888862, ; 318: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 319: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 191
	i32 2079903147, ; 320: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 321: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 322: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 323: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 324: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 325: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 326: Microsoft.Maui => 0x80bd55ad => 202
	i32 2169148018, ; 327: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 303
	i32 2181898931, ; 328: Microsoft.Extensions.Options.dll => 0x820d22b3 => 196
	i32 2192057212, ; 329: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 194
	i32 2193016926, ; 330: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 331: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 290
	i32 2201231467, ; 332: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 333: it\Microsoft.Maui.Controls.resources => 0x839595db => 305
	i32 2217644978, ; 334: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 273
	i32 2222056684, ; 335: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 336: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 255
	i32 2252106437, ; 337: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 338: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 339: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 340: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 341: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 210
	i32 2270573516, ; 342: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 299
	i32 2279755925, ; 343: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 262
	i32 2293034957, ; 344: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 345: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 346: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 347: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 309
	i32 2305521784, ; 348: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 349: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 214
	i32 2320631194, ; 350: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 351: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 352: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 353: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 354: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 355: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 356: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 357: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 358: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 304
	i32 2401565422, ; 359: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 360: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 237
	i32 2411328690, ; 361: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 175
	i32 2421380589, ; 362: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 363: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 224
	i32 2427813419, ; 364: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 301
	i32 2435356389, ; 365: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 366: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 367: Microsoft.JSInterop.dll => 0x919672ca => 198
	i32 2454642406, ; 368: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 369: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 370: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 371: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 227
	i32 2471841756, ; 372: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 373: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 374: Microsoft.Maui.Controls => 0x93dba8a1 => 200
	i32 2483903535, ; 375: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 376: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 377: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 378: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 249
	i32 2522472828, ; 380: Xamarin.Android.Glide.dll => 0x9659e17c => 208
	i32 2537015816, ; 381: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 174
	i32 2538310050, ; 382: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 383: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 302
	i32 2562349572, ; 384: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 385: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 386: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 250
	i32 2581819634, ; 387: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 272
	i32 2585220780, ; 388: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 389: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 390: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 176
	i32 2589602615, ; 391: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 392: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 188
	i32 2593496499, ; 393: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 311
	i32 2605712449, ; 394: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 290
	i32 2615233544, ; 395: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 241
	i32 2616218305, ; 396: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 195
	i32 2617129537, ; 397: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 398: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 399: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 231
	i32 2624644809, ; 400: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 236
	i32 2626831493, ; 401: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 306
	i32 2627185994, ; 402: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 403: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 404: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 245
	i32 2663391936, ; 405: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 210
	i32 2663698177, ; 406: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 407: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 408: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 409: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 410: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 411: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 178
	i32 2693849962, ; 412: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 413: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 270
	i32 2715334215, ; 414: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 415: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 416: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 417: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 418: Xamarin.AndroidX.Activity => 0xa2e0939b => 212
	i32 2735172069, ; 419: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 420: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 174
	i32 2737747696, ; 421: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 218
	i32 2740948882, ; 422: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 423: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 424: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 312
	i32 2758225723, ; 425: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 201
	i32 2764765095, ; 426: Microsoft.Maui.dll => 0xa4caf7a7 => 202
	i32 2765824710, ; 427: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 428: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 284
	i32 2778768386, ; 429: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 275
	i32 2779977773, ; 430: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 263
	i32 2785988530, ; 431: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 318
	i32 2788224221, ; 432: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 241
	i32 2801831435, ; 433: Microsoft.Maui.Graphics => 0xa7008e0b => 204
	i32 2803228030, ; 434: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 435: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 297
	i32 2810250172, ; 436: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 228
	i32 2819470561, ; 437: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 438: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 439: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 263
	i32 2824502124, ; 440: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 441: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 310
	i32 2833784645, ; 442: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 180
	i32 2838993487, ; 443: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 252
	i32 2849599387, ; 444: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 445: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 275
	i32 2855708567, ; 446: Xamarin.AndroidX.Transition => 0xaa36a797 => 271
	i32 2861098320, ; 447: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 448: Microsoft.Maui.Essentials => 0xaa8a4878 => 203
	i32 2870099610, ; 449: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 213
	i32 2875164099, ; 450: Jsr305Binding.dll => 0xab5f85c3 => 280
	i32 2875220617, ; 451: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 452: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 239
	i32 2887636118, ; 453: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 454: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 177
	i32 2899753641, ; 455: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 456: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 457: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 458: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 459: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 460: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 191
	i32 2916838712, ; 461: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 276
	i32 2919462931, ; 462: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 463: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 215
	i32 2936416060, ; 464: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 465: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 466: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 467: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 468: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 469: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 470: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 235
	i32 2987532451, ; 471: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 266
	i32 2996846495, ; 472: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 248
	i32 3016983068, ; 473: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 268
	i32 3023353419, ; 474: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 475: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 243
	i32 3038032645, ; 476: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 325
	i32 3056245963, ; 477: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 265
	i32 3057625584, ; 478: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 256
	i32 3059408633, ; 479: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 480: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 481: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 482: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 303
	i32 3090735792, ; 483: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 484: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 485: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 486: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 487: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 488: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 489: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 490: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 491: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 492: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 493: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 494: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 257
	i32 3192346100, ; 495: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 496: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 497: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 498: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 499: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 234
	i32 3220365878, ; 500: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 501: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 502: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 503: Xamarin.AndroidX.CardView => 0xc235e84d => 222
	i32 3265493905, ; 504: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 505: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 506: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 507: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 508: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 509: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 510: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 511: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 512: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 298
	i32 3316684772, ; 513: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 514: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 232
	i32 3317144872, ; 515: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 516: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 220
	i32 3345895724, ; 517: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 261
	i32 3346324047, ; 518: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 258
	i32 3357674450, ; 519: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 315
	i32 3358260929, ; 520: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 521: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 213
	i32 3362522851, ; 522: Xamarin.AndroidX.Core => 0xc86c06e3 => 229
	i32 3366347497, ; 523: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 524: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 262
	i32 3381016424, ; 525: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 294
	i32 3395150330, ; 526: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 527: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 528: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 233
	i32 3406629867, ; 529: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 189
	i32 3421170118, ; 530: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 183
	i32 3428513518, ; 531: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 532: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 533: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 534: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 236
	i32 3445260447, ; 535: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 536: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 199
	i32 3463511458, ; 537: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 302
	i32 3464190856, ; 538: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 176
	i32 3471940407, ; 539: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 540: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 541: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 315
	i32 3484440000, ; 542: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 314
	i32 3485117614, ; 543: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 544: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 545: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 225
	i32 3500000672, ; 546: Microsoft.JSInterop => 0xd09dc5a0 => 198
	i32 3509114376, ; 547: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 548: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 549: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 550: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 551: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 552: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 553: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 322
	i32 3597029428, ; 554: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 211
	i32 3598340787, ; 555: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 556: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 557: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 558: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 260
	i32 3633644679, ; 559: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 215
	i32 3638274909, ; 560: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 561: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 246
	i32 3643446276, ; 562: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 319
	i32 3643854240, ; 563: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 257
	i32 3645089577, ; 564: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 565: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 566: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 567: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 568: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 221
	i32 3684561358, ; 569: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 225
	i32 3697841164, ; 570: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 324
	i32 3700866549, ; 571: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 572: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 230
	i32 3716563718, ; 573: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 574: Xamarin.AndroidX.Annotation => 0xdda814c6 => 214
	i32 3722202641, ; 575: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 185
	i32 3724971120, ; 576: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 256
	i32 3732100267, ; 577: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 578: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 180
	i32 3733882439, ; 579: Unity.Abstractions.dll => 0xde8e8647 => 206
	i32 3737834244, ; 580: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 581: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 582: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 583: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 184
	i32 3786282454, ; 584: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 223
	i32 3792276235, ; 585: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 586: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 199
	i32 3802395368, ; 587: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 588: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 589: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 590: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 591: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 592: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 593: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 594: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 595: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 596: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 597: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 598: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 271
	i32 3888767677, ; 599: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 261
	i32 3889960447, ; 600: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 323
	i32 3896106733, ; 601: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 602: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 229
	i32 3901907137, ; 603: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 604: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 605: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 274
	i32 3928044579, ; 606: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 607: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 608: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 259
	i32 3945713374, ; 609: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 610: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 611: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 217
	i32 3959773229, ; 612: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 248
	i32 3980434154, ; 613: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 318
	i32 3987592930, ; 614: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 300
	i32 4003436829, ; 615: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 616: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 216
	i32 4023392905, ; 617: System.IO.Pipelines => 0xefd01a89 => 205
	i32 4025784931, ; 618: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 619: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 201
	i32 4054681211, ; 620: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 621: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 622: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 623: Microsoft.Maui.Essentials.dll => 0xf40add04 => 203
	i32 4099507663, ; 624: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 625: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 626: Xamarin.AndroidX.Emoji2 => 0xf479582c => 237
	i32 4102112229, ; 627: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 313
	i32 4125707920, ; 628: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 308
	i32 4126470640, ; 629: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 630: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 631: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 632: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 633: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 320
	i32 4151237749, ; 634: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 635: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 636: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 637: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 638: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 639: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 253
	i32 4185676441, ; 640: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 641: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 642: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4228977033, ; 643: EasyCash.dll => 0xfc111189 => 0
	i32 4256097574, ; 644: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 230
	i32 4258378803, ; 645: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 252
	i32 4260525087, ; 646: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 647: Microsoft.Maui.Controls.dll => 0xfea12dee => 200
	i32 4274976490, ; 648: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 649: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 253
	i32 4294648842, ; 650: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 190
	i32 4294763496 ; 651: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 239
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [652 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 249, ; 3
	i32 283, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 324, ; 9
	i32 124, ; 10
	i32 204, ; 11
	i32 102, ; 12
	i32 267, ; 13
	i32 107, ; 14
	i32 267, ; 15
	i32 139, ; 16
	i32 287, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 206, ; 21
	i32 223, ; 22
	i32 132, ; 23
	i32 269, ; 24
	i32 151, ; 25
	i32 321, ; 26
	i32 322, ; 27
	i32 18, ; 28
	i32 221, ; 29
	i32 26, ; 30
	i32 243, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 175, ; 36
	i32 226, ; 37
	i32 147, ; 38
	i32 245, ; 39
	i32 242, ; 40
	i32 293, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 321, ; 44
	i32 212, ; 45
	i32 83, ; 46
	i32 306, ; 47
	i32 244, ; 48
	i32 305, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 325, ; 57
	i32 165, ; 58
	i32 317, ; 59
	i32 227, ; 60
	i32 12, ; 61
	i32 240, ; 62
	i32 125, ; 63
	i32 152, ; 64
	i32 113, ; 65
	i32 166, ; 66
	i32 164, ; 67
	i32 242, ; 68
	i32 255, ; 69
	i32 84, ; 70
	i32 304, ; 71
	i32 298, ; 72
	i32 197, ; 73
	i32 150, ; 74
	i32 287, ; 75
	i32 60, ; 76
	i32 193, ; 77
	i32 51, ; 78
	i32 103, ; 79
	i32 114, ; 80
	i32 40, ; 81
	i32 280, ; 82
	i32 278, ; 83
	i32 190, ; 84
	i32 120, ; 85
	i32 312, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 232, ; 90
	i32 310, ; 91
	i32 238, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 274, ; 95
	i32 219, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 292, ; 99
	i32 155, ; 100
	i32 289, ; 101
	i32 154, ; 102
	i32 92, ; 103
	i32 284, ; 104
	i32 45, ; 105
	i32 307, ; 106
	i32 295, ; 107
	i32 288, ; 108
	i32 109, ; 109
	i32 129, ; 110
	i32 25, ; 111
	i32 209, ; 112
	i32 72, ; 113
	i32 55, ; 114
	i32 46, ; 115
	i32 316, ; 116
	i32 196, ; 117
	i32 233, ; 118
	i32 179, ; 119
	i32 22, ; 120
	i32 247, ; 121
	i32 86, ; 122
	i32 43, ; 123
	i32 160, ; 124
	i32 71, ; 125
	i32 260, ; 126
	i32 3, ; 127
	i32 42, ; 128
	i32 63, ; 129
	i32 0, ; 130
	i32 16, ; 131
	i32 53, ; 132
	i32 319, ; 133
	i32 283, ; 134
	i32 105, ; 135
	i32 288, ; 136
	i32 281, ; 137
	i32 244, ; 138
	i32 34, ; 139
	i32 158, ; 140
	i32 85, ; 141
	i32 32, ; 142
	i32 12, ; 143
	i32 51, ; 144
	i32 192, ; 145
	i32 56, ; 146
	i32 264, ; 147
	i32 36, ; 148
	i32 187, ; 149
	i32 294, ; 150
	i32 282, ; 151
	i32 217, ; 152
	i32 35, ; 153
	i32 58, ; 154
	i32 251, ; 155
	i32 173, ; 156
	i32 17, ; 157
	i32 285, ; 158
	i32 164, ; 159
	i32 184, ; 160
	i32 307, ; 161
	i32 250, ; 162
	i32 195, ; 163
	i32 277, ; 164
	i32 313, ; 165
	i32 153, ; 166
	i32 188, ; 167
	i32 273, ; 168
	i32 258, ; 169
	i32 311, ; 170
	i32 219, ; 171
	i32 29, ; 172
	i32 52, ; 173
	i32 309, ; 174
	i32 278, ; 175
	i32 5, ; 176
	i32 293, ; 177
	i32 268, ; 178
	i32 272, ; 179
	i32 224, ; 180
	i32 289, ; 181
	i32 216, ; 182
	i32 235, ; 183
	i32 85, ; 184
	i32 277, ; 185
	i32 61, ; 186
	i32 112, ; 187
	i32 57, ; 188
	i32 323, ; 189
	i32 264, ; 190
	i32 99, ; 191
	i32 19, ; 192
	i32 228, ; 193
	i32 111, ; 194
	i32 101, ; 195
	i32 102, ; 196
	i32 291, ; 197
	i32 104, ; 198
	i32 281, ; 199
	i32 71, ; 200
	i32 207, ; 201
	i32 38, ; 202
	i32 32, ; 203
	i32 189, ; 204
	i32 103, ; 205
	i32 73, ; 206
	i32 297, ; 207
	i32 9, ; 208
	i32 123, ; 209
	i32 46, ; 210
	i32 218, ; 211
	i32 197, ; 212
	i32 9, ; 213
	i32 43, ; 214
	i32 4, ; 215
	i32 265, ; 216
	i32 301, ; 217
	i32 296, ; 218
	i32 192, ; 219
	i32 31, ; 220
	i32 138, ; 221
	i32 92, ; 222
	i32 179, ; 223
	i32 93, ; 224
	i32 316, ; 225
	i32 49, ; 226
	i32 141, ; 227
	i32 112, ; 228
	i32 140, ; 229
	i32 234, ; 230
	i32 115, ; 231
	i32 282, ; 232
	i32 157, ; 233
	i32 76, ; 234
	i32 79, ; 235
	i32 254, ; 236
	i32 37, ; 237
	i32 276, ; 238
	i32 185, ; 239
	i32 238, ; 240
	i32 231, ; 241
	i32 64, ; 242
	i32 138, ; 243
	i32 15, ; 244
	i32 178, ; 245
	i32 116, ; 246
	i32 270, ; 247
	i32 279, ; 248
	i32 226, ; 249
	i32 48, ; 250
	i32 70, ; 251
	i32 80, ; 252
	i32 126, ; 253
	i32 94, ; 254
	i32 121, ; 255
	i32 286, ; 256
	i32 26, ; 257
	i32 247, ; 258
	i32 97, ; 259
	i32 28, ; 260
	i32 222, ; 261
	i32 314, ; 262
	i32 292, ; 263
	i32 149, ; 264
	i32 205, ; 265
	i32 169, ; 266
	i32 4, ; 267
	i32 98, ; 268
	i32 177, ; 269
	i32 33, ; 270
	i32 93, ; 271
	i32 269, ; 272
	i32 193, ; 273
	i32 21, ; 274
	i32 41, ; 275
	i32 170, ; 276
	i32 308, ; 277
	i32 240, ; 278
	i32 300, ; 279
	i32 254, ; 280
	i32 285, ; 281
	i32 279, ; 282
	i32 259, ; 283
	i32 2, ; 284
	i32 134, ; 285
	i32 111, ; 286
	i32 194, ; 287
	i32 320, ; 288
	i32 209, ; 289
	i32 317, ; 290
	i32 58, ; 291
	i32 95, ; 292
	i32 299, ; 293
	i32 39, ; 294
	i32 220, ; 295
	i32 25, ; 296
	i32 94, ; 297
	i32 89, ; 298
	i32 99, ; 299
	i32 10, ; 300
	i32 87, ; 301
	i32 100, ; 302
	i32 266, ; 303
	i32 181, ; 304
	i32 286, ; 305
	i32 211, ; 306
	i32 296, ; 307
	i32 7, ; 308
	i32 251, ; 309
	i32 291, ; 310
	i32 208, ; 311
	i32 88, ; 312
	i32 183, ; 313
	i32 246, ; 314
	i32 154, ; 315
	i32 207, ; 316
	i32 295, ; 317
	i32 33, ; 318
	i32 191, ; 319
	i32 116, ; 320
	i32 82, ; 321
	i32 20, ; 322
	i32 11, ; 323
	i32 162, ; 324
	i32 3, ; 325
	i32 202, ; 326
	i32 303, ; 327
	i32 196, ; 328
	i32 194, ; 329
	i32 84, ; 330
	i32 290, ; 331
	i32 64, ; 332
	i32 305, ; 333
	i32 273, ; 334
	i32 143, ; 335
	i32 255, ; 336
	i32 157, ; 337
	i32 41, ; 338
	i32 117, ; 339
	i32 182, ; 340
	i32 210, ; 341
	i32 299, ; 342
	i32 262, ; 343
	i32 131, ; 344
	i32 75, ; 345
	i32 66, ; 346
	i32 309, ; 347
	i32 172, ; 348
	i32 214, ; 349
	i32 143, ; 350
	i32 106, ; 351
	i32 151, ; 352
	i32 70, ; 353
	i32 156, ; 354
	i32 181, ; 355
	i32 121, ; 356
	i32 127, ; 357
	i32 304, ; 358
	i32 152, ; 359
	i32 237, ; 360
	i32 175, ; 361
	i32 141, ; 362
	i32 224, ; 363
	i32 301, ; 364
	i32 20, ; 365
	i32 14, ; 366
	i32 198, ; 367
	i32 135, ; 368
	i32 75, ; 369
	i32 59, ; 370
	i32 227, ; 371
	i32 167, ; 372
	i32 168, ; 373
	i32 200, ; 374
	i32 15, ; 375
	i32 74, ; 376
	i32 6, ; 377
	i32 23, ; 378
	i32 249, ; 379
	i32 208, ; 380
	i32 174, ; 381
	i32 91, ; 382
	i32 302, ; 383
	i32 1, ; 384
	i32 136, ; 385
	i32 250, ; 386
	i32 272, ; 387
	i32 134, ; 388
	i32 69, ; 389
	i32 176, ; 390
	i32 146, ; 391
	i32 188, ; 392
	i32 311, ; 393
	i32 290, ; 394
	i32 241, ; 395
	i32 195, ; 396
	i32 88, ; 397
	i32 96, ; 398
	i32 231, ; 399
	i32 236, ; 400
	i32 306, ; 401
	i32 31, ; 402
	i32 45, ; 403
	i32 245, ; 404
	i32 210, ; 405
	i32 109, ; 406
	i32 158, ; 407
	i32 35, ; 408
	i32 22, ; 409
	i32 114, ; 410
	i32 178, ; 411
	i32 57, ; 412
	i32 270, ; 413
	i32 144, ; 414
	i32 118, ; 415
	i32 120, ; 416
	i32 110, ; 417
	i32 212, ; 418
	i32 139, ; 419
	i32 174, ; 420
	i32 218, ; 421
	i32 54, ; 422
	i32 105, ; 423
	i32 312, ; 424
	i32 201, ; 425
	i32 202, ; 426
	i32 133, ; 427
	i32 284, ; 428
	i32 275, ; 429
	i32 263, ; 430
	i32 318, ; 431
	i32 241, ; 432
	i32 204, ; 433
	i32 159, ; 434
	i32 297, ; 435
	i32 228, ; 436
	i32 163, ; 437
	i32 132, ; 438
	i32 263, ; 439
	i32 161, ; 440
	i32 310, ; 441
	i32 180, ; 442
	i32 252, ; 443
	i32 140, ; 444
	i32 275, ; 445
	i32 271, ; 446
	i32 169, ; 447
	i32 203, ; 448
	i32 213, ; 449
	i32 280, ; 450
	i32 40, ; 451
	i32 239, ; 452
	i32 81, ; 453
	i32 177, ; 454
	i32 56, ; 455
	i32 37, ; 456
	i32 97, ; 457
	i32 166, ; 458
	i32 172, ; 459
	i32 191, ; 460
	i32 276, ; 461
	i32 82, ; 462
	i32 215, ; 463
	i32 98, ; 464
	i32 30, ; 465
	i32 159, ; 466
	i32 18, ; 467
	i32 127, ; 468
	i32 119, ; 469
	i32 235, ; 470
	i32 266, ; 471
	i32 248, ; 472
	i32 268, ; 473
	i32 165, ; 474
	i32 243, ; 475
	i32 325, ; 476
	i32 265, ; 477
	i32 256, ; 478
	i32 170, ; 479
	i32 16, ; 480
	i32 144, ; 481
	i32 303, ; 482
	i32 125, ; 483
	i32 118, ; 484
	i32 38, ; 485
	i32 115, ; 486
	i32 47, ; 487
	i32 142, ; 488
	i32 117, ; 489
	i32 34, ; 490
	i32 173, ; 491
	i32 95, ; 492
	i32 53, ; 493
	i32 257, ; 494
	i32 129, ; 495
	i32 153, ; 496
	i32 24, ; 497
	i32 161, ; 498
	i32 234, ; 499
	i32 148, ; 500
	i32 104, ; 501
	i32 89, ; 502
	i32 222, ; 503
	i32 60, ; 504
	i32 142, ; 505
	i32 100, ; 506
	i32 5, ; 507
	i32 13, ; 508
	i32 122, ; 509
	i32 135, ; 510
	i32 28, ; 511
	i32 298, ; 512
	i32 72, ; 513
	i32 232, ; 514
	i32 24, ; 515
	i32 220, ; 516
	i32 261, ; 517
	i32 258, ; 518
	i32 315, ; 519
	i32 137, ; 520
	i32 213, ; 521
	i32 229, ; 522
	i32 168, ; 523
	i32 262, ; 524
	i32 294, ; 525
	i32 101, ; 526
	i32 123, ; 527
	i32 233, ; 528
	i32 189, ; 529
	i32 183, ; 530
	i32 186, ; 531
	i32 163, ; 532
	i32 167, ; 533
	i32 236, ; 534
	i32 39, ; 535
	i32 199, ; 536
	i32 302, ; 537
	i32 176, ; 538
	i32 17, ; 539
	i32 171, ; 540
	i32 315, ; 541
	i32 314, ; 542
	i32 137, ; 543
	i32 150, ; 544
	i32 225, ; 545
	i32 198, ; 546
	i32 155, ; 547
	i32 130, ; 548
	i32 19, ; 549
	i32 65, ; 550
	i32 147, ; 551
	i32 47, ; 552
	i32 322, ; 553
	i32 211, ; 554
	i32 79, ; 555
	i32 61, ; 556
	i32 106, ; 557
	i32 260, ; 558
	i32 215, ; 559
	i32 49, ; 560
	i32 246, ; 561
	i32 319, ; 562
	i32 257, ; 563
	i32 14, ; 564
	i32 182, ; 565
	i32 68, ; 566
	i32 171, ; 567
	i32 221, ; 568
	i32 225, ; 569
	i32 324, ; 570
	i32 78, ; 571
	i32 230, ; 572
	i32 108, ; 573
	i32 214, ; 574
	i32 185, ; 575
	i32 256, ; 576
	i32 67, ; 577
	i32 180, ; 578
	i32 206, ; 579
	i32 63, ; 580
	i32 27, ; 581
	i32 160, ; 582
	i32 184, ; 583
	i32 223, ; 584
	i32 10, ; 585
	i32 199, ; 586
	i32 11, ; 587
	i32 78, ; 588
	i32 126, ; 589
	i32 83, ; 590
	i32 187, ; 591
	i32 66, ; 592
	i32 107, ; 593
	i32 65, ; 594
	i32 128, ; 595
	i32 122, ; 596
	i32 77, ; 597
	i32 271, ; 598
	i32 261, ; 599
	i32 323, ; 600
	i32 8, ; 601
	i32 229, ; 602
	i32 2, ; 603
	i32 44, ; 604
	i32 274, ; 605
	i32 156, ; 606
	i32 128, ; 607
	i32 259, ; 608
	i32 23, ; 609
	i32 133, ; 610
	i32 217, ; 611
	i32 248, ; 612
	i32 318, ; 613
	i32 300, ; 614
	i32 29, ; 615
	i32 216, ; 616
	i32 205, ; 617
	i32 62, ; 618
	i32 201, ; 619
	i32 90, ; 620
	i32 87, ; 621
	i32 148, ; 622
	i32 203, ; 623
	i32 36, ; 624
	i32 86, ; 625
	i32 237, ; 626
	i32 313, ; 627
	i32 308, ; 628
	i32 186, ; 629
	i32 50, ; 630
	i32 6, ; 631
	i32 90, ; 632
	i32 320, ; 633
	i32 21, ; 634
	i32 162, ; 635
	i32 96, ; 636
	i32 50, ; 637
	i32 113, ; 638
	i32 253, ; 639
	i32 130, ; 640
	i32 76, ; 641
	i32 27, ; 642
	i32 0, ; 643
	i32 230, ; 644
	i32 252, ; 645
	i32 7, ; 646
	i32 200, ; 647
	i32 110, ; 648
	i32 253, ; 649
	i32 190, ; 650
	i32 239 ; 651
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
