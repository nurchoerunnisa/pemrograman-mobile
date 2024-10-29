import 'package:flutter/material.dart';
import 'register.dart'; // Import SignUpPage dari register.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      initialRoute: '/', // Rute awal aplikasi
      routes: {
        '/': (context) => const MyHomePage(),
        '/signup': (context) => const SignUpPage(), // Rute ke SignUpPage
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Beranda"), backgroundColor: Colors.brown),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Nama : Nur Choerun Nisa"),
            const SizedBox(height: 8.0),
            const Text("Nim : 220112002"),
            const SizedBox(height: 8.0),
            const Text("Prodi : Sistem Informasi"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/signup'); // Navigasi ke SignUpPage
              },
              child: const Text('Klik Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
