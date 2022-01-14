// ignore_for_file: prefer_const_constructors

import 'package:appinio_study_case/layouts/home_layout.dart';
import 'package:appinio_study_case/shared/cubit/app_cubit.dart';
import 'package:appinio_study_case/shared/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()
        ..initWeatherData()
        ..initCityName(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CupertinoApp(
            theme:
                CupertinoThemeData(primaryColor: CupertinoColors.systemIndigo),
            title: 'Sample App',
            home: HomeLayout(),
          );
        },
      ),
    );
  }
}
