import 'package:flutter/material.dart';
import 'package:tugas4/login.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Bantuan'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Cara Menggunakan Aplikasi:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Masuk ke halaman login.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '2. Masukkan nama pengguna dan kata sandi Anda.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '3. Klik tombol masuk untuk masuk ke aplikasi.',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '4. Pilih salah satu fitur yang akan di gunakan',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '5. Untuk logout dari aplikasi, klik tombol di pojok kanan atas',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Jika Anda mengalami masalah dengan aplikasi, silakan hubungi kami di alamat email kami.',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Email: tugas4kami@gmail.com',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
