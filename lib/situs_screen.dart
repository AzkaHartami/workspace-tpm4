import 'package:flutter/material.dart';
import 'data_situs.dart';
import 'situs_detail.dart';

class SitusScreen extends StatelessWidget {
  const SitusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rekomendasi Situs"),
      ),
      body: GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 3 / 4,
  ),
  itemBuilder: (context, index) {
    final SitusData place = ListSitus[index];
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SitusDetail(situsID: index);
        }));
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.network(
                place.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(place.name),
                  SizedBox(height: 4),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  },
  itemCount: ListSitus.length,
),

    );
  }

}