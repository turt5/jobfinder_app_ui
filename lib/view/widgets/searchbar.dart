import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10),
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
      child:  TextField(
        decoration: InputDecoration(
          prefixIcon: Image.asset('assets/images/icons8-search-100.png',scale: 4,color: Colors.grey,),
          suffixIcon: Image.asset('assets/images/icons8-filter-100.png',scale: 4,color: Colors.grey,),
          hintText: 'Search',
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
