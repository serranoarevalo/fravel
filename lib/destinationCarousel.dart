import 'package:flutter/cupertino.dart';

class Destination {
  final String title;
  final String date;
  final String photoUrl;
  final double rating;
  Destination(this.title, this.date, this.rating, this.photoUrl);
}

class DestinationCarousel extends StatelessWidget {
  final List<Destination> destinations = [
    Destination("Antelope Canyon", "Yesterday", 4.7,
        "https://images.unsplash.com/photo-1560750588-73207b1ef5b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
    Destination("Kamchatka Peninsula", "A week ago", 5,
        "https://images.unsplash.com/photo-1560780551-bd5d3eacd2c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
    Destination("Genteng Lembang", "Two Months Ago", 5,
        "https://images.unsplash.com/photo-1560713274-b1522b37f88b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: destinations.length,
      itemBuilder: (context, int index) => Container(
          margin: EdgeInsets.only(right: 10),
          height: 350,
          width: 150,
          child: DestinationCard(data: destinations[index]),
    ));
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    @required this.data,
  });

  final Destination data;

  @override
  Widget build(BuildContext context) {
    return Text(data.title);
  }
}
