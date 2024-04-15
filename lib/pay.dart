import 'package:flutter/material.dart';
import 'package:flutter_application_2/basket.dart';
import 'package:flutter_application_2/catalog.dart';
import 'package:flutter_application_2/favorit.dart';
import 'package:flutter_application_2/login_in.dart';




class Pay extends StatelessWidget {
   Pay({super.key});



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
        actions: [
          IconButton(
                                      onPressed: () {
                                        Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  FirstPage()),

                    );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.home,
                                      color: Colors.white,
                                      )
                                      ),

                                       IconButton(
                                      onPressed: () {
                                        Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  basket()),

                    );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.shopping_bag,
                                      color: Colors.white,
                                      )
                                      ),
        ],
      ),





      body: Container(child: 
      Row(children: <Widget>[
        SizedBox(width: 30,),
          Expanded(flex: 1, 
          child: Container(
            child: Column(
              children: <Widget>[

            SizedBox(height: 30,),

            Container(
               height: MediaQuery.of(context).size.height * 0.2,
               width: MediaQuery.of(context).size.width * 0.9,
               decoration: BoxDecoration( 
        border: Border.all(
                color: Colors.black,
                width: 2,
        )),
               //color: Colors.black,
               child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
               width: MediaQuery.of(context).size.width * 0.75,
                    child: const TextField(
                    textAlign: TextAlign.left ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'Номер',                    
                        ),
                  ),
                  ),

                  SizedBox(height: 50,),

                  Row(
                    children: <Widget>[

                      SizedBox(width: 20,),

                       Container(
                    height: MediaQuery.of(context).size.height * 0.05,
               width: MediaQuery.of(context).size.width * 0.25,
                    child: const TextField(
                    textAlign: TextAlign.left ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'дата',                    
                        ),
                  ),
                  ),

                  SizedBox(width: 50,),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
               width: MediaQuery.of(context).size.width * 0.25,
                    child: const TextField(
                    textAlign: TextAlign.left ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'cvv',                    
                        ),
                  ),
                  ),

                    ],
                  )


                ],
               ),
            ),


            SizedBox(height: 60,),

            
                Container(
                                                      width: MediaQuery.of(context).size.width * 0.98, 
                                                      height: MediaQuery.of(context).size.height * 0.1,                   
                                                                          //color: Colors.amber
                                                                           decoration: BoxDecoration( 
                                                                                                             borderRadius: BorderRadius.circular(16),
                                                                                                             color: Color.fromRGBO(54, 120, 167, 1)
                                                                                                                          ),
                                                                            child: TextButton(
                                                                                                      style: ButtonStyle(
                                                                                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                                                                    ),
                                                                                                    onPressed: () {
                                                                                                     Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  Pay()),

                    );
                                                                                                    },
                                                                                                    child: Text('Оплатить',
                                                                                                    style: TextStyle(fontSize: 20)),
                                                                                                  ),                                  
                                                                          ),
            



          ]
          )
          )
          ),
        SizedBox(width: 30,),
      ]))
      
    );
  
  }
}