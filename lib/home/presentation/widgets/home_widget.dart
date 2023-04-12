import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primeiro_app_flutter/character/presentation/page/character_page.dart';
import 'package:primeiro_app_flutter/home/presentation/cubit/navigation_cubit.dart';
import 'package:primeiro_app_flutter/settings/presentation/page/settings_page.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);

  final _pages = {
    const CharacterPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Characters',
    ),
    const SettingsPage(): const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    )
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: _pages.keys.toList(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: _pages.values.toList(),
            currentIndex: state,
            onTap: (value) =>
                context.read<NavigationCubit>().onSelectedTab(value),
          ),
        );
      },
    );
  }
}
