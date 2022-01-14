import 'package:appinio_study_case/shared/components.dart';
import 'package:appinio_study_case/shared/cubit/app_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeModule extends StatelessWidget {
  const HomeModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Column(
          children: [
            cubit.tempNow == 0
                ? shimmerLoader()
                : tempNow(cubit, true, context),
            const Spacer()
          ],
        );
      },
    );
  }
}
