
import 'package:flutter/material.dart';
import 'package:flutter_application_2/catalog.dart';




class Second extends StatelessWidget {
  const Second({super.key});

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

                    MaterialPageRoute(builder: (context) =>  Second()),

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
          child: Container(child: Column(children: <Widget>[
            SizedBox(height: 30,),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                //color: Colors.black,
                child: Center(
                  child: Text("",
                        style: const TextStyle(fontSize: 24),),
                ),
              ),
              SizedBox(height: 20),
          ]))),
        SizedBox(width: 30,),
      ]))
      
    );
  
  }
}