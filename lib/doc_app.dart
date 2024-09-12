import 'package:advanced_course/core/routing/routes.dart';
import 'package:advanced_course/core/routing/app_router.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this .appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColorsManger.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}