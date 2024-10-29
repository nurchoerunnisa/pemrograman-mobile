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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grow My Plants'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian ucapan selamat datang
            const Text(
              'Hello!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Let\'s Take care of your plants',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),

            // Bagian tanaman
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Gambar Peace Lily
                Column(
                  children: [
                    Image.asset(
                      'assets/peace_lily.jpg', // Path gambar Peace Lily
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.meeting_room, color: Colors.grey, size: 20),
                        SizedBox(width: 4),
                        Text('Indoor', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Icon(Icons.calendar_today,
                            color: Colors.grey, size: 20),
                        SizedBox(width: 4),
                        Text('21 hari', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                // Gambar Aloe Vera
                Column(
                  children: [
                    Image.asset(
                      'assets/aloe_vera.jpg', // Path gambar Aloe Vera
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.meeting_room, color: Colors.grey, size: 20),
                        SizedBox(width: 4),
                        Text('Indoor', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Icon(Icons.calendar_today,
                            color: Colors.grey, size: 20),
                        SizedBox(width: 4),
                        Text('21 hari', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Bagian Rawat Tanaman
            const Text(
              'Rawat Tanaman',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Section Siram Tanaman
            Row(
              children: [
                const Icon(Icons.water_drop, color: Colors.blue, size: 28),
                const SizedBox(width: 8),
                const Text(
                  'Siram Tanaman',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 36, top: 4),
              child: Text(
                'Peace Lily 250ml',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),

            // Section Tambahkan pencahayaan
            Row(
              children: [
                const Icon(Icons.wb_sunny, color: Colors.orange, size: 28),
                const SizedBox(width: 8),
                const Text(
                  'Tambahkan pencahayaan',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 36, top: 4),
              child: Text(
                'Aloe Vera 3 jam',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
