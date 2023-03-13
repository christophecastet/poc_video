import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:poc_video/feature/slider/presentation/cubit/slider.cubit.dart';
import 'package:poc_video/feature/slider/presentation/widget/slider.widget.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SliderCubit(),
        ),
      ],
      child: const SliderView(),
    );
  }
}

class SliderView extends StatelessWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliderWidget();
  }
}
