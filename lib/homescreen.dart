import 'package:flutter/material.dart';
import 'package:tugas4/situs_screen.dart';
import 'login.dart';
import 'anggota.dart';
import 'situs_screen.dart';
import 'stopwatch.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        automaticallyImplyLeading : false,
        title: Text('Home Screen'),
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => Anggota(),
          ),
          );
              
            },
            child: Text('Daftar Anggota'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
               Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => StopwatchScreen(),
          ),
          );
            },
            child: Text('Stopwatch'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => SitusScreen(),
          ),
          );
            },
            child: Text('Situs Rekomendasi'),
          ),

           SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text('Favorite'),
          ),
        ],
      ),
    );
  }
}

