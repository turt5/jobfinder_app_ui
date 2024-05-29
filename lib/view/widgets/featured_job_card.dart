import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeaturedJobCart extends StatelessWidget {
  const FeaturedJobCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 10,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            //top row:
            Row(
              children: [
                Container(
                    height: 40,
                    width: 40,
                    child: Center(
                        child:
                            Image.asset('assets/images/icons8-fire-48.png'))),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Graphic Design',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$60k-90k/year',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    height: 25,
                    width: 25,
                    child: Center(
                        child: Image.asset(
                      'assets/images/icons8-bookmark-100.png',
                      color: Colors.grey,
                    ))),
              ],
            ),

            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Odama Studio',style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/icons8-location-100.png',
                              height: 17, width: 17,color: Colors.grey.shade400,),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Indonesia',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text('Full-time',style: TextStyle(
                          color: Colors.grey.shade500
                        ),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
