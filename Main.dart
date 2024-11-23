import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'services/notifications_service.dart';
import 'screens/home_screen.dart';
import 'utils/scheduler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Scheduler.scheduleContentAggregation();
  NotificationsService.initializeNotifications();
  runApp(NileTideApp());
}

class NileTideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NileTide',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('am', ''),
        Locale('om', ''),
      ],
      home: HomeScreen(),
    );
  }
}
