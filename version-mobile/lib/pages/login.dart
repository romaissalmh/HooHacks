import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:passwordfield/passwordfield.dart';
import 'register.dart';
  //List<account> accounts = List<account>();

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  //account a ; 
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(110, 201, 206, 1),
      appBar : AppBar(
        backgroundColor: Color.fromRGBO(255, 201, 8, 1),
        title: Text(
          'Login',
          style : TextStyle(
            color : Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body : SafeArea(
        child : SingleChildScrollView(
        child : Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/Capture.jpg',
              width: 400, 
              height: 400,
              
              //fit: BoxFit.fill,
            ),
          ),
Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon : Icon(
                    LineIcons.envelope,
                    color : Colors.white,
                    size : 25,
                  ),
                  labelText: 'Email of the company',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color : Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    
                  ),
                                    focusedBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(width: 1, color: Colors.white)),
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  

                ),
                onChanged : (Value){
                    setState((){
                      email = Value;
                    }

                    );
                  },
                

              )
            ),
           Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
              child: PasswordField(
              
              color: Colors.white,
              hasFloatingPlaceholder: true,
              pattern: r'.*[@$#.*].*',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(width: 1, color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(width: 1, color: Colors.green)),
              
              errorMessage: 'must contain special character either . * @ # \$',
                    /*onChanged : (Value){
                    setState((){
                      a.password = Value;
                    }

                    );
                  },*/
              ),
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
                      Navigator.pushNamed(context, '/charities');

                },
                icon: Icon(
                  LineIcons.check_circle,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Log in',
                    style : TextStyle(
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,

              ),
          ],

        ),

      ),
      
    )
    );

  }

}
