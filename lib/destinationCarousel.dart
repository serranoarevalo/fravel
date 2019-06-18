import 'package:flutter/cupertino.dart';

class Destination {
  final String title;
  final String date;
  final double rating;
  Destination(this.title, this.date, this.rating);
}

class DestinationCarousel extends StatelessWidget {
  final List<Destination> destinations = [
    Destination("Antelope Canyon", "Yesterday", 4.7),
    Destination("Kamchatka Peninsula", "A week ago", 5),
    Destination("Genteng Lembang", "Two Months Ago", 5),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: destinations.length,
      itemBuilder: (context, int index) => Container(
          height: 400, width: 200, child: Text(destinations[index].title)),
    ));
  }
}
