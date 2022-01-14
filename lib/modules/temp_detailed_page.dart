import 'package:appinio_study_case/shared/components.dart';
import 'package:appinio_study_case/shared/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TempDetailedPage extends StatelessWidget {
  const TempDetailedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(),
            backgroundColor: const Color(0xffebf0ed),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    tempNow(cubit, false, context),
                    detailsNow(cubit, context),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
