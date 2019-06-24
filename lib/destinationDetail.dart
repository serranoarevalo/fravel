import 'package:flutter/material.dart';

class DetailArguments {
  final String photoUrl;
  final String name;
  DetailArguments(this.photoUrl, this.name);
}

class Detail extends StatelessWidget {
  static const routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    final DetailArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Hero(
        tag: "detailHero${args.name}",
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  fit: BoxFit.cover,
                  image: NetworkImage(args.photoUrl))),
          child: Center(
            child: Text(args.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                )),
          ),
        ),
      ),
    );
  }
}
