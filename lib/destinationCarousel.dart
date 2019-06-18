import 'package:flutter/material.dart';

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
    Destination("Kamchatka Peninsula", "A week ago", 4.9,
        "https://images.unsplash.com/photo-1560780551-bd5d3eacd2c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
    Destination("Genteng Lembang", "Two Months Ago", 4.3,
        "https://images.unsplash.com/photo-1560713274-b1522b37f88b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
  ];

  List<Widget> renderDestinations() {
    final r = destinations.map((d) => DestinationCard(data: d)).toList();
    print(r);
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30),
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (context, int index) =>
                DestinationCard(data: destinations[index])));
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    @required this.data,
  });

  final Destination data;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(20),
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: NetworkImage(data.photoUrl))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    data.rating.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 7),
                        child: Text(data.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ))),
                    Container(
                      child: Text(
                        data.date,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ])
            ]));
  }
}