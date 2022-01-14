// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:appinio_study_case/shared/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.info), label: "About")
            ],
          ),
          tabBuilder: (context, i) {
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    backgroundColor: Color(0xffebf0ed),
                    resizeToAvoidBottomInset: true,
                    navigationBar: CupertinoNavigationBar(
                      middle: Text("Sample App"),
                    ),
                    child: SafeArea(child: cubit.pages[i]));
              },
            );
          },
        );
      },
    );
  }
}
