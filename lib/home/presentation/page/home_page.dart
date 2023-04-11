import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primeiro_app_flutter/home/presentation/cubit/navigation_cubit.dart';
import 'package:primeiro_app_flutter/home/presentation/widgets/home_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: HomeWidget(),
    );
  }
}
