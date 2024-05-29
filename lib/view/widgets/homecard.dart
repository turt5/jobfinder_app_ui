import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFF0a6cf5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(2, 2),
          ),
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(-2, -2),
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15,),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Let's find a new job suitable for you",style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 18,),

                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Read More',style: TextStyle(
                      color: Color(0XFF0a6cf5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                )
              ],
                        ),
            ),),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/woman.png',fit: BoxFit.cover,filterQuality: FilterQuality.high,height:120,width: 150,),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
