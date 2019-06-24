import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Detail extends StatelessWidget {
  final String photoUrl;
  final String title;

  Detail(this.photoUrl, this.title);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "detailHero${this.title}",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: NetworkImage(this.photoUrl))),
              ),
            ),
            Container(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(this.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
