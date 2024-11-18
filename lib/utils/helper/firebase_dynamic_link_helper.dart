// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../config/go_route/routes.dart';

// FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

// class FirebaseDynamicLinkHelper {
//   static final context = router.routerDelegate.navigatorKey.currentContext!;
//   static Future initDynamicLinks() async {
//     debugPrint("_handleDeepLinkFROMAnother true");
//     debugPrint("_handleDeepLinkFROMAnother true ${context.toString()}");
//     // 1. Get the initial dynamic link if the app is opened with a dynamic link
//     final PendingDynamicLinkData? initialLink =
//         await FirebaseDynamicLinks.instance.getInitialLink();
//     if (initialLink != null) {
//       router.go('/');
//       router.push(initialLink.link.path);
//     }
//     // final PendingDynamicLinkData? data = await dynamicLinks.getInitialLink();
//     // if (data != null) {
//     //   getIt<HomeController>().deeplink.value = data.link.path;
//     //   context.push('/');
//     //   context.push(data.link.path);
//     //   // router.go(data.link.path);
//     // } else {
//     //   getIt<HomeController>().deeplink.value = 'null';
//     //   // router.push(data.link.path);
//     // }
//     // debugPrint("_handleDeepLinkFROMAnother data $data");
//     // 2. handle link that has been retrieved
//     FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
//       debugPrint(
//           "_handleDeepLinkFROMAnother truedsd  ${dynamicLinkData.link.path}");
//       context.push('/');
//       context.push(dynamicLinkData.link.path);
//       // context.push(dynamicLinkData.link.path);
//     }).onError((error) {
//       // Handle errors
//     });

//     // 3. Register a link callback to fire if the app is opened up from the background
//     // using a dynamic link.
//   }

//   static Future<Uri> createDynamicLink(
//       {String? path,
//       String? description,
//       String? image,
//       String? title,
//       bool? short}) async {
//     final DynamicLinkParameters parameters = DynamicLinkParameters(
//       uriPrefix: 'https://z1superapp.page.link/',
//       link: Uri.parse('https://z1superapp.page.link/$path'),
//       // longDynamicLink: Uri.parse(
//       //   'https://z1superapp.page.link/?link=https://z1superapp.page.link&apn=com.z1fsc.z1SuperApp.dev&isi=123456789&ibi=com.z1fsc.z1SuperApp.dev',
//       // ),
//       // longDynamicLink: Uri.parse(
//       //   'https://z1superapp.page.link?efr=0&ibi=com.z1fsc.z1SuperApp.dev&apn=com.z1fsc.z1SuperApp.dev&imv=0&amv=0&link=https://z1superapp.page.link&ofl=https://z1superapp.page.link',
//       // ),
//       androidParameters: const AndroidParameters(
//         packageName: 'software.ditech.dipos',
//         minimumVersion: 0,
//       ),
//       iosParameters: const IOSParameters(
//           bundleId: 'software.ditech.dipos',
//           minimumVersion: '0',
//           appStoreId: '123456789'),
//       socialMetaTagParameters: SocialMetaTagParameters(
//           description: description,
//           imageUrl: Uri.parse(image ?? ''),
//           title: title ?? ''),
//     );

//     Uri url;
//     if (short!) {
//       // final ShortDynamicLink shortLink =
//       // await dynamicLinks.buildShortLink(parameters);
//       final shortLink =
//           await FirebaseDynamicLinks.instance.buildShortLink(parameters);
//       url = shortLink.shortUrl;
//     } else {
//       url = await dynamicLinks.buildLink(parameters);
//     }
//     return url;
//   }
// }
