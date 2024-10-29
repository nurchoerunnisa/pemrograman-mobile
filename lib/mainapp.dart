import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grow My Plants',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0093/6227/6415/products/2-02_1280x.png?v=1612199656'), // URL gambar ilustrasi
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromRGBO(
                      0, 128, 0, 0.3), // Menggunakan warna dengan transparansi
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),

          Center(
            // Membungkus Column dengan Center agar berada di tengah
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Mengatur agar hanya mengambil ruang secukupnya
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Grow My Plants', // Judul di layar aplikasi
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Anda lupa untuk menyiram tanaman?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Jangan khawatir, kami akan mengingatkanmu!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Login button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      // Aksi untuk tombol Login
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 12),
                  // Create My Account button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.green[700],
                      side: BorderSide(color: Colors.green[500]!, width: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28, vertical: 10),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      // Aksi untuk tombol Create My Account
                    },
                    child: const Text('Create New Account'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
