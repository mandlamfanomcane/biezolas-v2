import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:workmanager/workmanager.dart';
import 'firebase_options.dart';
import 'screens/login_screen.dart';
import 'models/ticket.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Hive for offline storage
  await Hive.initFlutter();
  Hive.registerAdapter(TicketAdapter());
  
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // Initialize Workmanager for background sync
  Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: false,
  );
  
  runApp(const BiezolasApp());
}

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    if (task == 'syncData') {
      // Sync pending data with Firebase
      print('Syncing data with Firebase...');
    }
    return Future.value(true);
  });
}

class BiezolasApp extends StatelessWidget {
  const BiezolasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIEZOLAS v2.0',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
