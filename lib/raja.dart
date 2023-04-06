import 'package:flutter/material.dart';

class Raja extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raja Panjaitan'),
        centerTitle: true,
      ),
      body: ListView(
       children: [
          Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Image.asset(
                        'assets/raja.jpg',
                        width: 300,
                      ),
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
                                children: [Text("Raja Pranata Panjaitan")],
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
                                children: [Text("123200060")],
                                crossAxisAlignment: CrossAxisAlignment.center,
                              ),
                            ]),

                            
                          ],
                        ),
                      ),
                    ])),
                  ],
                ),
              ),
            ],
          )
        ]
      ),
    );
  }
}