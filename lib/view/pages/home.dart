import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:jobfind/view/widgets/featured_job_card.dart';
import 'package:jobfind/view/widgets/header.dart';
import 'package:jobfind/view/widgets/homecard.dart';

import '../widgets/recommended_card.dart';
import '../widgets/searchbar.dart';

class JobFinderHome extends StatefulWidget {
  const JobFinderHome({super.key});

  @override
  State<JobFinderHome> createState() => _JobFinderHomeState();
}

class _JobFinderHomeState extends State<JobFinderHome> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey.shade100,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.grey.shade100,
        // padding: const EdgeInsets.only(left: 20,right: 20, top: 10,bottom: 10),
        child: Column(
          children: [
            //header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const HomeHeader(),
            ),
            const SizedBox(
              height: 20,
            ),
            //body
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const CustomSearchBar(),
                    const SizedBox(
                      height: 30,
                    ),
                    const HomeCard(),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Featured Jobs',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const FeaturedJobCart();
                          },
                          scrollDirection: Axis.horizontal),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommend for you',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(itemCount: 5,physics: NeverScrollableScrollPhysics(),itemBuilder: (context,index){
                      return const RecommendedCard();
                    },shrinkWrap: true,
                    )
                  ],
                ),
              ),
            ),

            //footer
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    spreadRadius: .2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _bottomNavSelectedIndex = 0;
                        });
                      },
                      icon: Image.asset(
                        'assets/images/icons8-home-100.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                        color: _bottomNavSelectedIndex == 0
                            ? Color(0XFF0a6cf5)
                            : Colors.grey.shade500,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _bottomNavSelectedIndex = 1;
                        });
                      },
                      icon: Image.asset(
                        'assets/images/icons8-bookmark-100.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                        color: _bottomNavSelectedIndex == 1
                            ? Color(0XFF0a6cf5)
                            : Colors.grey.shade500,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _bottomNavSelectedIndex = 2;
                        });
                      },
                      icon: Image.asset(
                        'assets/images/icons8-message-100.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                        color: _bottomNavSelectedIndex == 2
                            ? Color(0XFF0a6cf5)
                            : Colors.grey.shade500,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _bottomNavSelectedIndex = 3;
                        });
                      },
                      icon: Image.asset(
                        'assets/images/icons8-person-100.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                        color: _bottomNavSelectedIndex == 3
                            ? const Color(0XFF0a6cf5)
                            : Colors.grey.shade500,
                      )),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  int _bottomNavSelectedIndex = 0;
}
