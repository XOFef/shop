import 'package:flutter/material.dart';
import 'package:flutter_application_2/catalog.dart';
import 'package:flutter_application_2/login_up.dart';

class loginIn extends StatelessWidget {
  const loginIn({super.key});

final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(54, 120, 167, 1),
         title: 
       Text('GiftShop',
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      
      body: Row(
        children: [
          SizedBox(width: 30,),
          Expanded(flex: 1, 
          child: Container(child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                //color: Colors.black,
                child: Center(
                  child: Text("Авторизация",
                        style: const TextStyle(fontSize: 24),),
                ),
              ),
              SizedBox(height: 20),

              Expanded(
                flex: 1,
                child: Container(
                 // color: Colors.black,
                  child: ListView(

  children: <Widget>[
    Container(
  child:  TextFormField(
                    decoration:  InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    style: _sizeTextBlack ,
                  ),
    ),

    SizedBox(height: 20,),

  Container(
  child:  TextFormField(
                    decoration:  InputDecoration(labelText: "Пароль"),
                    keyboardType: TextInputType.emailAddress,
                    style: _sizeTextBlack ,
                  ),
    ),

    SizedBox(height: 20,),



   SizedBox(height: 40,),

  Container(
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width * 0.9,
                   decoration: BoxDecoration( 
                                                                   borderRadius: BorderRadius.circular(16),
                                                                   color: Color.fromRGBO(54, 120, 167, 1)
                                                                 ),
  child:  TextButton(
                                 style: ButtonStyle(
                                 foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  ),
                                 onPressed: () {Navigator.push(
                                                                                   context,
                                                                                   MaterialPageRoute(builder: (context) =>   FirstPage  ()),
                                                                                    );},
                                                                                      child: Text('Авторизоваться',
                                                                                       style: TextStyle(fontSize: 18)),
                                                                                                  )
    ),
    Container(

  child: Center(
    child: TextButton(
                                                                                                      style: ButtonStyle(
                                                                                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                                                                    ),
                                                                                                    onPressed: () {Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  login()),

                    );},
    child: Text('Нет аккаунта',
                       style: TextStyle(fontSize: 14,
                       color: Colors.grey,
                       decoration: TextDecoration.underline,
                       decorationColor: Colors.grey,
                       )
                       ),
  ),
    ),
    ),


       SizedBox(height: 40,),

 

  ],
),
                ),
              )
          

            ],
          )
          ),
          ),
          SizedBox(width: 30),
        ],
      
      ),
    );
  
  }
}