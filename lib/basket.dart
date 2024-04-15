import 'package:flutter/material.dart';
import 'package:flutter_application_2/card.dart';
import 'package:flutter_application_2/catalog.dart';
import 'package:flutter_application_2/pay.dart';
import 'package:flutter_application_2/personal_page.dart';
import 'package:flutter_application_2/var.dart';


class basket extends StatefulWidget {
  const basket({super.key });

  @override
  State<basket> createState() => Page();
}



// ignore: must_be_immutable
class Page extends State<basket> {
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

                    MaterialPageRoute(builder: (context) =>  FirstPage()),

                    );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.home,
                                      color: Colors.white,
                                      )
                                      ),
        ],
      ),
      body:  Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[

            // top text
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
             
            ),
          
            // center
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.98,
              //color: Colors.amber,
              child:
                  Center(

                    // the length of the list
                    child: Container(
                        //color: Colors.green,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView.builder(
                            itemCount: favorite.length,
                            itemBuilder: (BuildContext context, index) {
                              return CardOfProduct(index: index);
                            }
                            )
                          ),
                    ),     
            ),
              Container(
                                                      width: MediaQuery.of(context).size.width * 0.98, 
                                                      height: MediaQuery.of(context).size.height * 0.03, 
                                                      
              ),

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
                                                                                                    child: Text('К оформлению товара',
                                                                                                    style: TextStyle(fontSize: 20)),
                                                                                                  ),                                  
                                                                          ),
            ]
            
            ),
            )
       
    );
  }
}