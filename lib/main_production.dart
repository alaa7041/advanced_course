import 'package:advanced_course/core/di/dependancy_injection.dart';
import 'package:advanced_course/core/routing/app_router.dart';
import 'package:advanced_course/doc_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(
      DevicePreview(
        builder: (context) => DocApp(
          appRouter: AppRouter(),
        ), // Wrap your app
      )
  );
}