import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String name;
  String email;
     List<String> domaines = ['Food', 'Books', 'Toys', 'Clothes']; // Option 2

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
                         
                             
                           
                          
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text('Your Donation',
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
         

              Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 30),
              child: TextField(
               
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon : Icon(
                    LineIcons.dollar,
                    color : Colors.white,
                    size: 25,
                    
                  ),
                  labelText: 'Amount',
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
              child: RaisedButton.icon(
              shape: RoundedRectangleBorder(side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(3)),
                  
                
                color:  Color.fromRGBO(110, 201, 206, 1),
                onPressed: (){
                  DatePicker.showDatePicker(context);
                  //Navigator.pushNamed(context, '/charities');
                },
                icon: Icon(
                  LineIcons.calendar,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Date',
                    style : TextStyle(
                      color: Colors.white,

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
                  DatePicker.showDatePicker(context);
                  //Navigator.pushNamed(context, '/charities');
                },
                icon: Icon(
                  LineIcons.check_circle,
                  color : Colors.white,
                  size: 30,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Done',
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