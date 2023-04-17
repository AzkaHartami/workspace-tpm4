import 'package:flutter/material.dart';

class AnggotaPage extends StatelessWidget {
  const AnggotaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anggota'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAnggotaCard(
                context,
                'Muhammad Azka Hartami',
                '1232000051',
                'assets/azka.jpg',
              ),
              _buildAnggotaCard(
                context,
                'Ryzal Fadhillah',
                '123200053',
                'assets/ryzal.jpg',
              ),
              _buildAnggotaCard(
                context,
                'Raja Pranata Panjaitan',
                '123200060',
                'assets/raja.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnggotaCard(
    BuildContext context,
    String name,
    String nim,
    String imagePath,
  ) {
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 60.0,
              ),
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'NIM: $nim',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
