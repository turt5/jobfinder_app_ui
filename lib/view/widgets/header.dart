import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfind/view/widgets/logo.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      // color: Colors.red,

      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              JobFinderLogo(),
              SizedBox(
                width: 10,
              ),
              Text('JobFind',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),


          Stack(
            children: [
              Image.asset('assets/images/icons8-notification-100.png',height: 25,width: 25,fit: BoxFit.cover,color: Colors.grey.shade700,),
              Transform.translate(
                offset: const Offset(14,-1),
                child:  Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
