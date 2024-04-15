
import 'package:flutter/material.dart';
import 'package:flutter_application_2/basket.dart';
import 'package:flutter_application_2/card.dart';
import 'package:flutter_application_2/personal_page.dart';
import 'package:flutter_application_2/var.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => Page();
}



// ignore: must_be_immutable
class Page extends State<FirstPage> {
var MainColor= Color.fromRGBO(54, 120, 167, 1);
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColor,
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

                    MaterialPageRoute(builder: (context) =>  PersonalPage()),

                    );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.person,
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
      body: Container(
        //color: Colors.red,
        child: Column(
          children: <Widget> [
          Expanded(
          flex: 1,
        child: Column(
          children: <Widget>[
            //
            
            Expanded(
              flex:1,
              //height: MediaQuery.of(context).size.height * 0.05,
              //color: Colors.black,
              child: Center(
                child: Container( //finder
                child: Row(children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Expanded(
                    flex:1,
                   child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.045,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const TextField(
                    textAlign: TextAlign.center ,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22
                ),
                    decoration: InputDecoration(             
                        border: OutlineInputBorder(), hintText: 'Поиск',                    
                        ),
                  ),
                ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                ]
                )
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
          
                  Center(
                    child:Container( 
                      width: MediaQuery.of(context).size.width * 1,
                      child:Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: people.length,
                            itemBuilder: (BuildContext context, index) {
                              return CardOfProduct(index: index);
                            }
                            )
                            )
                            )
                  
                  ),
            
            ),
            
            
          ],
        ),
        
        ),
      
        ],
        ),
      ),
       
    );
  }
}