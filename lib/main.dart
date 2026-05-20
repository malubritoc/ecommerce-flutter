import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/auth_gate.dart';
import 'services/cart_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha aplicação',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3D5AFE)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F2F4),
      ),
      home: const AuthGate(),
    );
  }
}
