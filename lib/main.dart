import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:restaurant_mobile_app/core/di/get_it.dart';
import 'package:restaurant_mobile_app/core/service/bloc_observer.dart';
import 'package:restaurant_mobile_app/firebase_options.dart';
import 'package:restaurant_mobile_app/my_app.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetIt();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}
