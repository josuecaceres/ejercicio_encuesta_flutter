import 'package:band_names/providers/socket_provider.dart';
import 'package:flutter/material.dart';
import 'package:band_names/screens/home_screen.dart';
import 'package:band_names/screens/status.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SockectProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'status': (context) => const StatusScreen(),
        },
      ),
    );
  }
}
