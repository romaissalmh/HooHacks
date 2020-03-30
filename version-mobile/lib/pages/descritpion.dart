import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'charitiesmodel.dart';


class Description extends StatelessWidget {
        final Charity charit;
      Description({this.charit});
  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color.fromRGBO(255, 201, 8, 1),
        title: Text(
          'Details',
          style : TextStyle(
            color : Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Center(
            child: new Image.asset(
              'assets/aide.gif',
              height: 300,
              width: 300,
              
              
              
              //fit: BoxFit.fill,
            ),
          ),
              Divider(),
              
              Text(
                'A Chacun Son Everest',
                style : TextStyle(
                  color: Color.fromRGBO(255, 201, 8, 1),
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 8.0,

              ),
              Text(
                'France',
                style : TextStyle(
                  color:Color.fromRGBO(255, 201, 8, 1),
                ),
              ),            
              SizedBox(
                height: 8.0,

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(110, 201, 206, 1),
                      borderRadius: BorderRadius.circular(5),

                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      
                      '224 enfants atteints de cancers ou de leucémie et 168 femmes en rémission d’un cancer du sein ont été accueillis à Chamonix',
                      style : TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),  
              SizedBox(
                height: 8.0,

              ), 
              RaisedButton.icon(
              shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(17)),
                  
                
                color:  Color.fromRGBO(255, 201, 8, 1),
                onPressed: (){
                      /*List<account> p = accounts.where((i)=> i.email == a.email && i.password == a.password).toList();
                      if (p.length!=0){
                        print('heyyyyyyy $p');
                          Navigator.pushNamed(context, '/');

      
                      }
                      else{
                        print('error');
                      }*/
                      Navigator.pushNamed(context, '/forms');

                },
                icon: Icon(
                  LineIcons.check,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Donate',
                    style : TextStyle(
                      color: Colors.white,

                    ),
                  ),
                ),
              ),

            ],
            
          ),

        ),
      ),
    );
  }
}