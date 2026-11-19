import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plyx/data/repositories/slidePageRoute/slidePageRoute.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenTwo.dart';

class SlideScreenOne extends StatelessWidget {
  const SlideScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/interstellar.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Discover',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          fontFamily: 'Mulish'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Daily',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mulish',
                          fontSize: 36,
                          color: Color(0xFFFFB6B6)),
                    )
                  ],
                ),
                Text(
                  'Movie Gems',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      fontFamily: 'Mulish'),
                ),
                SizedBox(height: 10),
                Text(
                  'Get a handpicked movie recommendation every day. From classics to hidden gems, there’s always something new to watch!',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.shade800,
                ),
                SizedBox(width: 3),
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.withOpacity(0.2),
                ),
                SizedBox(width: 3),
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.withOpacity(0.2),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, SlidePageRoute(page: SlideScreenTwo()));
                },
                icon: Icon(
                  CupertinoIcons.arrow_right_circle_fill,
                  size: 50,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
