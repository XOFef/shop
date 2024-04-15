
import 'package:flutter/material.dart';


import 'package:flutter_application_2/var.dart';

class Contact extends StatelessWidget {
   Contact({super.key, required this.index});
var MainColor= Color.fromRGBO(54, 120, 167, 1);
int index;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
                backgroundColor: MainColor,
             
              ),


                body:  Container(
                  //color: Colors.black,
                  child:  Row(
                    children: <Widget>[
                      SizedBox(width: 30,),

                      Expanded(
                        flex:1,
                        child: Container(
                          //color: Colors.blue,
                          child: Column(
                            children: <Widget> [
                              SizedBox(height:25),

                              Container( //image
                              //color: Colors.black,
                                height: MediaQuery.of(context).size.height * 0.25,
                                child: Image.network(url),
                              ),

                              Container( // textName
                              //color: Colors.blue,
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "${people[index].name}",
                    style: const TextStyle(fontSize: 26),
                                )
                              ),

                              Container( // textCost
                              //color: Colors.black,
                                height: 25,
                                 width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "${people[index].cost} руб.",
                    style: const TextStyle(fontSize: 16),
                                )
                              ),

                              SizedBox(height:10),

                              Container(
                                //color: Colors.black,
                                height: 25,
                                 width: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Описание",
                    style: const TextStyle(fontSize: 20),
                                )
                              ),

                              Expanded(
                                  flex:1,
                                  child: Container(
                                    child: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
     
      
    child: Text(
       "${people[index].phone}",
                    style: const TextStyle(fontSize: 16),
      )
    ),
    ]
    ) ,
                                  ),
                              ),

                               Container(
                                child: Row(
                                  children: <Widget> [
                                    Container(
                                      child: IconButton(
                                      onPressed: () {favorite.add(people[index],
                                      );
                                      },
                                      icon: const Icon(
                                      size: 27,
                                      Icons.favorite_border,
                                      color: Colors.red,
                                      )
                                      ),
                                    ),

                                      SizedBox(width:20,),

                                    Expanded(flex:1,
                                  child: Container(
                                                                          
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
                                                                                                      favorite.add(people[index],);
                                                                                                    },
                                                                                                    child: Text('В корзину',
                                                                                                    style: TextStyle(fontSize: 20)),
                                                                                                  ),                                  
                                                                          ),),
                                  ],
                                ),
                               ),
                                       

                              SizedBox(height:20,)

                            ],
                          ),
                          )),

                        SizedBox(width:30,),


                    ],
                  )
                )
               
    );
  }
}