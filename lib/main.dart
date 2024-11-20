import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/go_route/routes.dart';
import 'config/theme/theme.dart';
import 'utils/helper/local_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await LocalStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    // notificationServices.setupInteractedMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unFocus(context);
      },
      child: GetMaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        theme: lightTheme(),
        builder: (context, child) {
          final mediaQueryData = MediaQuery.of(context);
          final scale = mediaQueryData.textScaler
              .clamp(minScaleFactor: 0.9, maxScaleFactor: 0.9);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaler: scale),
            child: child!,
          );
        },
      ),
    );
  }
}

void unFocus(BuildContext context) {
  final FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "test",
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: const MyHomePage(title: "appTitle"),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFEFEEEE),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(title),
//       ),
//       body: Row(
//         children: [
//           Expanded(
//             child: DraggableGridViewBuilder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 1,
//                 childAspectRatio: MediaQuery.of(context).size.width /
//                     (MediaQuery.of(context).size.height / 3),
//               ),
//               children: [
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.blue,
//                     width: 200,
//                     height: 150,
//                     child: const Text('Item 1'),
//                   ),
//                 ),
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.green,
//                     width: 200,
//                     height: 100,
//                     child: const Text('Item 2'),
//                   ),
//                 ),
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.yellow,
//                     width: 200,
//                     height: 150,
//                     child: const Text('Item 3'),
//                   ),
//                 ),
//               ],
//               isOnlyLongPress: false,
//               dragCompletion: (List<DraggableGridItem> list, int beforeIndex,
//                   int afterIndex) {
//                 print('onDragAccept: $beforeIndex -> $afterIndex');
//               },
//               dragFeedback: (List<DraggableGridItem> list, int index) {
//                 return SizedBox(
//                   width: 200,
//                   height: 150,
//                   child: list[index].child,
//                 );
//               },
//               dragPlaceHolder: (List<DraggableGridItem> list, int index) {
//                 return PlaceHolderWidget(
//                   child: Container(
//                     color: Colors.black,
//                   ),
//                 );
//               },
//             ),
//           ),
//           Expanded(
//             child: DraggableGridViewBuilder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 1,
//                 childAspectRatio: MediaQuery.of(context).size.width /
//                     (MediaQuery.of(context).size.height / 3),
//               ),
//               children: [
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.red,
//                     width: 200,
//                     height: 150,
//                     child: const Text('Item 1'),
//                   ),
//                 ),
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.grey,
//                     width: 200,
//                     height: 100,
//                     child: const Text('Item 2'),
//                   ),
//                 ),
//                 DraggableGridItem(
//                   isDraggable: true,
//                   child: Container(
//                     color: Colors.orange,
//                     width: 200,
//                     height: 150,
//                     child: const Text('Item 3'),
//                   ),
//                 ),
//               ],
//               isOnlyLongPress: false,
//               dragCompletion: (List<DraggableGridItem> list, int beforeIndex,
//                   int afterIndex) {
//                 print('onDragAccept: $beforeIndex -> $afterIndex');
//               },
//               dragFeedback: (List<DraggableGridItem> list, int index) {
//                 return SizedBox(
//                   width: 200,
//                   height: 150,
//                   child: list[index].child,
//                 );
//               },
//               dragPlaceHolder: (List<DraggableGridItem> list, int index) {
//                 return PlaceHolderWidget(
//                   child: Container(
//                     color: Colors.black,
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
