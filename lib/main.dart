import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pass_auth/ui/certification.dart';
import 'package:pass_auth/ui/certification_result.dart';
import 'package:pass_auth/ui/home.dart';

void main() {
  runApp(IamportApp());
}

class IamportApp extends StatefulWidget {
  @override
  _IamportAppState createState() => _IamportAppState();
}

class _IamportAppState extends State<IamportApp> {
  static const Color primaryColor = Color(0xff344e81);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
        ),
        GetPage(
          name: '/certification',
          page: () => Certification(),
        ),
        GetPage(
          name: '/certification_result',
          page: () => CertificationResult(),
        ),
      ],
    );
  }
}
