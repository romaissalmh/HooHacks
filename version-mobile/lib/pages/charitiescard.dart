import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:math';
import 'charitiesmodel.dart';
import 'descritpion.dart';
class CharityCard extends StatelessWidget {
  
  final Charity charit;


  CharityCard({this.charit});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(110, 201, 206, 1),
      shape:RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
      
      
        margin: EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 0.0),
        child : Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Divider(),
            

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 8),
                  Container(
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(110, 201, 206, 1),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        charit.name,
                        style : TextStyle(
                          fontSize : 15.0,
                          letterSpacing : 2.0,
                          color : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(),

                  Text(
                    charit.location,
                    style : TextStyle(
                      fontSize : 8.0,
                      letterSpacing : 2.0,
                      color : Colors.white,
                    ),
                  ),
                  SizedBox(
                    height : 10.0,
                  ), 
                  
                ],

              ),
            ),
            IconButton(
              iconSize: 25,
              color: Colors.white,
              icon:Icon(
                LineIcons.arrow_circle_o_right,
                ),
              onPressed: (){
                  Description(charit:charit);

                  Navigator.pushNamed(context, '/descritpion');

              }
            ),

          ],
        ),
      );
  }
}