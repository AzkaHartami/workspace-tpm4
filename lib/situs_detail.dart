// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'data_situs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SitusDetail extends StatefulWidget {
  final int situsID;

  const SitusDetail({Key? key, required this.situsID}) : super(key: key);

  @override
  State<SitusDetail> createState() => _SitusDetailState();
}

class _SitusDetailState extends State<SitusDetail> {
  bool toggle = false; 

  late SharedPreferences prefs;
  
  @override
  void initState() {
    super.initState();
    loadFavoriteStatus(); // load favorite status when the widget is initialized
  }

  void loadFavoriteStatus() async {
  prefs = await SharedPreferences.getInstance();
  setState(() {
    toggle = prefs.getBool('${widget.situsID}') ?? false; // load the favorite status for the current situs
  });
}

   void saveFavoriteStatus() {
  prefs.setBool('${widget.situsID}', toggle); // save the favorite status for the current situs
}


  Widget build(BuildContext context) {
    final SitusData rekom = ListSitus[widget.situsID];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Detail " + rekom.name) ,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
  icon: toggle ? Icon(Icons.favorite_border) : Icon(Icons.favorite),
  onPressed: () {
    setState(() {
      toggle = !toggle;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(toggle ? "Hapus Dari Favorit" : "Tambahkan ke Favorit"),
        duration: Duration(seconds: 1),
      ),
    );
    saveFavoriteStatus();
  },
),

            ),
          ],
        ),
        body: ListView(children: [
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Image.network(
                        rekom.image,
                        width: 300,
                      ),
                    ),
                    Text(
                      rekom.name,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Center(
                        child: Column(children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        margin: EdgeInsets.all(20),
                        child: Table(
                          columnWidths: {
                            0: FlexColumnWidth(50),
                            1: FlexColumnWidth(300),
                          },
                          children: [
                            TableRow(children: [
                              Column(
                                children: [Text("Penjelasan")],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),                              
                            ]),

                            TableRow(children: [
                              Column(
                                children: [Text(  rekom.penjelasan )],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ]),

                            TableRow(children: [
                              Column(
                                children: [Text(" ")],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),                              
                            ]),

                            TableRow(children: [
                              Column(
                                children: [Text("Link Url Situs")],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ]),

                           TableRow(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    launch(rekom.situsUrl); // launch the URL when the link is pressed
                                  },
                                  child: Text(
                                    rekom.situsUrl,
                                    style: TextStyle(
                                      decoration: TextDecoration.underline, // underline the link text
                                      color: Colors.blue, // set the link text color
                                    ),
                                  ),
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ],
                        )


                            
                            
                          ],
                        ),
                      ),
                    ])),
                  ],
                ),
              ),
            ],
          )
        ]));
  }

  launch(String situsUrl) {}
}