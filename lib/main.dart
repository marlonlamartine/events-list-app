import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:party_event/app/party_event_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PartyEventApp());
}
