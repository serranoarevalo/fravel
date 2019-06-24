import 'package:flutter/material.dart';

class DetailArguments {
  final String photoUrl;
  final String title;
  DetailArguments(this.photoUrl, this.title);
}

class Detail extends StatelessWidget {
  static const routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    final DetailArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "detailHero${args.title}",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: NetworkImage(args.photoUrl))),
              ),
            ),
            Container(
              child: Center(
                child: Text(args.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
