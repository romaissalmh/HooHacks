import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';
import 'package:passwordfield/passwordfield.dart';
//import 'account.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
    bool _rememberMe = false;
    //account a = new account(name: '',email: '',password: '',phone: '',domaine: '') ;
    
   String name; 
   String email;
    
    List<String> domaines = ['Society', 'Organisation', 'Industry', 'Restaurant']; // Option 2

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(110, 201, 206, 1),
      appBar : AppBar(
        backgroundColor: Color.fromRGBO(255, 201, 8, 1),
        title: Text(
          'Register',
          style : TextStyle(
            color : Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body : 
        SafeArea(
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
          SizedBox(
            height:20,
          ),
          
            
             Container(
               decoration: BoxDecoration(
                 border: Border.all(color : Colors.white, width : 1),
                 borderRadius: BorderRadius.circular(17),
                 color: Color.fromRGBO(255, 201, 8, 1),

              

               ),
               
               child: Padding(
                 padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                 child: Text(
                  'Fill this form',
                  style : TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    

                  ),
            ),
               ),
             ),
         
          SizedBox(
            height:20,
          ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
              child: TextField(
               
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon : Icon(
                    LineIcons.industry,
                    color : Colors.white,
                    size: 25,
                    
                  ),
                  labelText: 'Name of the company',
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
                      name = Value;
                    }
                    );
                  },
                  
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
                

              ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon : Icon(
                    LineIcons.phone,
                    color : Colors.white,
                    size: 25,
                  ),

                  labelText: 'Phone Number',
                  
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
                /*onChanged : (Value){
                    setState((){
                      a.phone = Value;
                    }

                    );
                  },*/
                

              ),
            ),
          
              
             Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(
                  color: Colors.transparent,

                ),
                   
              ), 
              child : Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
                child: Container(
                  
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                      hint: Row(
                        children: <Widget>[
                         
                             Icon(
                                LineIcons.certificate,
                                color: Colors.white,
                                size: 25,
                              ),
                           
                          
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text('Company domain',
                                    style: TextStyle(
                                      color: Colors.white,
                                    //color: Colors.grey[650],
                                    ),
                                ),
                          ),

                          
                        ],
                  ),
                  //value: a.domaine,
                  isExpanded: true,
                  onChanged: (newValue) {
                      setState(() {
                        domaines = newValue;
                      });
                  },
                  items: domaines.map((domaine) {
                  return DropdownMenuItem(
                        child: Text(
                          domaine,
                          style: TextStyle(
                            color: Colors.amber[400],
                          ),
                        ),
                        value: domaine,                      
                  );
                  }).toList(),
                      
                  ),
                    ),
                ),
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
                  Navigator.pushNamed(context, '/charities');
                },
                icon: Icon(
                  LineIcons.sign_out,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Sign in',
                    style : TextStyle(
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
              Divider(),

                          RaisedButton.icon(
              shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(17)),
                  
                
                color:  Color.fromRGBO(255, 201, 8, 1),
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                icon: Icon(
                  LineIcons.sign_in,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Sign up',
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
    //accounts.add(a);
    
  }

}