import 'package:flutter/material.dart';
import 'data_situs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteList extends StatefulWidget {
  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  late SharedPreferences prefs;

  List<SitusData> favoriteList = [];

  @override
  void initState() {
    super.initState();
    loadFavorites(); // load the list of favorite sites when the widget is initialized
  }

  void loadFavorites() async {
    prefs = await SharedPreferences.getInstance();
    List<SitusData> allSites = ListSitus;
    List<SitusData> favoriteSites = [];

    // loop through all the sites and add the favorite ones to the list
    for (int i = 0; i < allSites.length; i++) {
      bool isFavorite = prefs.getBool('${allSites[i].name}') ?? false;
      if (isFavorite) {
        favoriteSites.add(allSites[i]);
      }
    }

    setState(() {
      favoriteList = favoriteSites;
    });
  }

  void removeFromFavorites(int situsID) {
    prefs.setBool('$situsID', false); // set the favorite status to false
    loadFavorites(); // reload the list of favorite sites
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Sites"),
      ),
      body: favoriteList.isEmpty
          ? Center(child: Text("You haven't added any sites to favorites yet."))
          : ListView.builder(
              itemCount: favoriteList.length,
              itemBuilder: (BuildContext context, int index) {
                SitusData site = favoriteList[index];
                return Card(
                  child: ListTile(
                    title: Text(site.name),
                    subtitle: Text(site.penjelasan),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
