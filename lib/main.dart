import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/home/presentation/page/home_page.dart';
import 'package:primeiro_app_flutter/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: TextButton(
//           onPressed: () async {
//             final CharacterService service = GetIt.I.get();
//             // ignore: unused_local_variable
//             final response = await service.getCharacters();
//           },
//           child: const Text('Pressed')),
//     );
//   }
// }
