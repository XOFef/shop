
import 'package:flutter/material.dart';
import 'package:flutter_application_2/product.dart';
import 'package:flutter_application_2/var.dart';



class CardOfProduct extends StatelessWidget {
  CardOfProduct({super.key, required this.index});

  final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
        border: Border.all(
                color: Colors.black,
                width: 2,
            ),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 24, top: 8),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.8,

     child: Column(
      children: <Widget>[

        Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 1,
                  //color: Colors.black,
                  child: Row(
                    children: <Widget>[
                            Container(
                          width: MediaQuery.of(context).size.width * 0.05,
                          //color: Colors.black,
                                      ),

          Expanded(
                   flex: 1,
                   child:  Container(
                                    //color: Colors.blue,
                                       child: Text(
                                                  "${people[index].name}",
                                                  style: const TextStyle(fontSize: 24),
                                                  ),
                                     ) 
                  ),



          Container(
                    width: MediaQuery.of(context).size.width * 0.11,
                    child: Center(
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
                                  )
                   ),

                     Container(
                              width: MediaQuery.of(context).size.width * 0.05,
                              //color: Colors.black,
                      ),


                    ],
                  ),
        ),

        Container(
                   height: MediaQuery.of(context).size.height * 0.19,
                   width: MediaQuery.of(context).size.width * 1,
                   //color: Colors.black,
                   child: Row(
                              children: <Widget>[

                                 Container(
                                           width: MediaQuery.of(context).size.width * 0.05,
                                           //color: Colors.red,
                                          ),

                                Expanded(
                                  flex:1,
                                  child: 
                                 Container(

                                           color: Colors.red,
                                           child: Image.network(url),
                                          ),  
                                ),

                                  SizedBox(width: 25),

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.5,
                                           height: MediaQuery.of(context).size.width * 1,
                                           //color: Colors.red,
                                           child: Column(
                                                        children: <Widget>[

                                                    

                                                          Expanded(flex:1,
                                                            child: ListView(
                                                              children: <Widget>[
                                                            Container(
                                                                     //width: MediaQuery.of(context).size.width * 0.45,
                                                                     //height: MediaQuery.of(context).size.width * 0.24,
                                                                     //color: Colors.black,
                                                                      child: Text(
                                                                                  "${people[index].phone}",
                                                                                  style: const TextStyle(fontSize: 14),
                                                                                  ),
                                                          ),]
                                                          ),
                                                          ),

                                                          Container(
                                                                     width: MediaQuery.of(context).size.width * 0.5,
                                                                     height: MediaQuery.of(context).size.width * 0.1,
                                                                    child: Row(
                                                                      children: <Widget>[

                                                                        Expanded(flex:1,
                                                                        child: Container(
                                                                         // width: MediaQuery.of(context).size.width * 0.2,
                                                                         // color: Colors.black,
                                                                          child: Text(
                                                                                           "${people[index].cost} руб.",
                                                                                          style: const TextStyle(fontSize: 16),
                                                                                        ),
                                                                        ),
                                                                        ),

                                                                        SizedBox(width: 5,),


                                                                        Container(
                                                                          width: MediaQuery.of(context).size.width * 0.25,
                                                                          //color: Colors.amber
                                                                           decoration: BoxDecoration( 
                                                                                                             borderRadius: BorderRadius.circular(16),
                                                                                                             color: Color.fromRGBO(54, 120, 167, 1)
                                                                                                                          ),
                                                                            child: TextButton(
                                                                                                      style: ButtonStyle(
                                                                                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                                                                    ),
                                                                                                    onPressed: () {Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  Contact(index: index,)),

                    );},
                                                                                                    child: Text('Купить'),
                                                                                                  )                                   
                                                                          ),
                                       
                                                                      ],
                                                                    ),
                                                                      
                                                          ),
                                                        ],
                                                        ),
              
                                          ),    

                                  Container(
                                           width: MediaQuery.of(context).size.width * 0.05,
                                           //color: Colors.red,
                                          ),                        

                              ],
                             ),
        )







      ],
     ),
   );
       
  }
}