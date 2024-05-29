import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: const EdgeInsets.only(bottom: 20),
      height: 100,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Row(
        children: [
          Image.network(
            'https://najahall.com/wp-content/uploads/2020/05/spotify-simple-green-logo-icon-24.png',
            height: 60,
            width: 60,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'UI/UX Designer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Spotify',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '•',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Full-time',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          )),

          Container(
            padding: const EdgeInsets.only(right: 5,top: 8),
            alignment: Alignment.topRight,
            child: Image.asset('assets/images/icons8-bookmark-100.png',height: 25,width: 25,fit: BoxFit.cover,color: Colors.grey.shade500,),
          )
        ],
      ),
    );
  }
}
