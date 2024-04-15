
import 'package:flutter/material.dart';
import 'package:flutter_application_2/basket.dart';
import 'package:flutter_application_2/catalog.dart';
import 'package:flutter_application_2/favorit.dart';
import 'package:flutter_application_2/login_in.dart';




class PersonalPage extends StatelessWidget {
   PersonalPage({super.key});



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
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.height * 0.15,
                
                decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(500),
                       // color: Colors.deepOrangeAccent,
                          border: Border.all(
                color: Colors.grey,
                width: 2,
            ),
                ),
                child: Center(
                  child:    Icon(
                                      size: 70,
                                      Icons.person,
                                      color: Colors.grey,
                                      ),
                ),
                ),
                SizedBox(height:15),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                //color: Colors.black,
                child: Center(
                 child: Text("Миронова Кристина Антоновна\n+7 (977) 287-35-08\nreterter29_illust@mail.ru",
                       style: const TextStyle(fontSize: 20),),
                ),
              ),


              SizedBox(height: 20),
               Expanded(flex:1, child: Container()),

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
                                                                                   MaterialPageRoute(builder: (context) =>   Favorite  ()),
                                                                                    );},
                                                                                      child: Text('Список избранного',
                                                                                       style: TextStyle(fontSize: 18)),
                                                                                                  )
    ),

    SizedBox(height: 20),

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
                                                                                      child: Text('История покупок',
                                                                                       style: TextStyle(fontSize: 18)),
                                                                                                  )
    ),

    SizedBox(height: 20),

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
                                                                                   MaterialPageRoute(builder: (context) =>   loginIn  ()),
                                                                                    );},
                                                                                      child: Text('Выйти',
                                                                                       style: TextStyle(fontSize: 18)),
                                                                                                  )
    ),

        SizedBox(height: 20),

          ]))),
        SizedBox(width: 30,),
      ]))
      
    );
  
  }
}