import 'package:flutter/material.dart';
import 'package:tugas4/azka.dart';
import 'azka.dart';
import 'raja.dart';
import 'ryzal.dart';

class Anggota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Anggota'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Azka(),
                ),
              );
            },
            child: Text('Azka'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Raja(),
                ),
              );
            },
            child: Text('Raja'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Ryzal(),
                ),
              );
            },
            child: Text('Ryzal'),
          ),
        ],
      ),
    );
  }
}
