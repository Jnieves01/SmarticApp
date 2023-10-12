import 'package:flutter/material.dart';


class Logo extends StatelessWidget{
  const Logo({super.key});


  Widget build(BuildContext context){
    return Center(
                    child: Container(
                     
                      child: Column(
                        children: [
                          
                          ClipRRect(
                            child: Image.asset(
                              "assets/img/logo.png",
                           width: 270,
                           height: 270,
                            ),
                          ),

                          
                        ],
                      ),
                    ),
                  );
  }

}
