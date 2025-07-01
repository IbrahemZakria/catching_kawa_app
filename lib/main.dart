import 'package:catching_kawa_app/bloco_bserver.dart';
import 'package:catching_kawa_app/catching_kawa_app.dart';
import 'package:catching_kawa_app/core/helper/services/shared_preferance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await SharedPreferance.init();

  runApp(const CatchingKawaApp());
}
