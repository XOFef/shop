import 'package:flutter/material.dart';
import 'package:flutter_application_2/card.dart';
import 'package:flutter_application_2/personal_page.dart';
import 'package:flutter_application_2/var.dart';


class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => Page();
}



// ignore: must_be_immutable
class Page extends State<Favorite> {
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

                    MaterialPageRoute(builder: (context) =>  PersonalPage()),

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
      body:  Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[

            // top text
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              child: const Center(
                child: Text('Список избранного:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24
                ),
                )
                )
            ),
          
            // center
            Container(
              height: MediaQuery.of(context).size.height * 0.75,
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
            ),]),)
       
    );
  }
}