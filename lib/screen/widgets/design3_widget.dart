import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Design3 extends StatelessWidget {
  const Design3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'T-shirt',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(2)),
                child: Text(
                  "NEW",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: RatingBar.builder(
            initialRating: 3,
            glow: false,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemSize: 15,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.black,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    '£5.00',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '£5.00',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
