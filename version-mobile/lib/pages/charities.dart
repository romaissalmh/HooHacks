import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'charitiesmodel.dart';
import 'charitiescard.dart';
//import 'package:geolocator/geolocator.dart';

class Charities extends StatefulWidget {
  @override
  _CharitiesState createState() => _CharitiesState();
}

class _CharitiesState extends State<Charities> {

  List<Charity> ch = [ 
    new Charity(name: 'A chacun son Everest', location: 'France', description: '224 enfants atteints de cancers ou de leucémie et 168 femmes en rémission d’un cancer du sein ont été accueillis à Chamonix'),
    new Charity(name: 'Action contre la faim (ACF)', location: 'France', description: 'En 2016, ACF a apporté une aide alimentaire à 5,1 millions de personnes dans 49 pays.'),
    new Charity(name: 'Aide et Action	', location: 'France', description: 'Le ratio missions de cet organisme qui soutient plus de 700.000 enfants a baissé de 2 points.'),
    new Charity(name: 'Aide à l’enfance tibétaine	', location: 'France', description: '2.673 parrains ont soutenu en 2016 l’éducation de 2.951 enfants tibétains qui, pour la quasi-totalité d’entre eux, vivent en Inde.'),
    new Charity(name: 'Aides', location: 'France', description: 'Cette association de soutien aux malades du sida a accru de 2 points la part consacrée à ses actions.'),
    new Charity(name: 'Amnesty international France	', location: 'France', description: 'Selon l’ONG, c’est la gestion indispensable de ses milliers de bénévoles qui explique les mauvais ratios.'),
    new Charity(name: 'Armée du Salut	', location: 'France', description: 'Les 171 établissements de cette structure protestante ont offert 3,8 millions de repas en 2016.'),
    new Charity(name: 'Banque alimentaire	', location: 'France', description: 'La faiblesse des frais de collecte (0,1%) s’explique par l’absence de campagne de promotion.'),
    new Charity(name: 'Croix rouge française	', location: 'France', description: 'La plus grosse ONG française a aidé 3,8 millions de personnes dans le monde l’an dernier.'),

  ];

  


  /*static const nycLat = 40.748445 ; 
  static const nycLng = -73.9878531;
  static const apiKey = 'AIzaSyDkIDO2oMZhYYkODUN28ZxQtecS31cOXps';*/


 
 /* String liste = 'helloooo';

  Future<void> searchNearby() async {

     Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
     double long= position.longitude; 
     double lat = position.latitude;
     print(long);
     print(lat);
     


      Response response = await get('https://maps.googleapis.com/maps/api/place/details/json?key=AIzaSyDkIDO2oMZhYYkODUN28ZxQtecS31cOXps&location=$lat,$long&radius=20000');
      Map data = jsonDecode(response.body);
      print(data);

      /*setState(() {
        liste = data['results'].toString();
        //liste = data['results'].map<String>((result)=>result['name'].toString()).toList();
        print(liste);
        
      }); */
  }*/

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //searchNearby();
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
    //backgroundColor: Color.fromRGBO(110, 201, 206, 1),
      appBar : AppBar(
        backgroundColor: Color.fromRGBO(255, 201, 8, 1),
        title: Text(
          'Charities',
          style : TextStyle(
            color : Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body : SafeArea(
        child : SingleChildScrollView(
          child:SafeArea(
            child: Column(
              children: ch.map((charit)=>CharityCard(charit: charit)).toList(),

            ),
        

        ),

      ),
        
      
    ),
    );
  }
}
