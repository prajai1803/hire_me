import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String? language;
  String? projectName;
  String? projectDescription;
  String? fork;
  CustomCard(
      {super.key,
      this.projectName,
      this.projectDescription,
      this.language,
      this.fork});

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding:
          const EdgeInsets.only(top: 4, left: 8.0, right: 8.0, bottom: 4.0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .22,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("$language",
                    style: TextStyle(
                        fontSize: 16 * textScaleFactor, fontFamily: "Robota")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$projectName",
                        style: TextStyle(
                            fontSize: 25 * textScaleFactor,
                            fontFamily: "Robota")),
                    Text("$projectDescription",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14 * textScaleFactor,
                            fontFamily: "Robota")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Text(
                          "$fork",
                          style: TextStyle(fontSize: 13 * textScaleFactor),
                        ),
                      ],
                    ),
                    Image.network(
                      "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                      height: 28,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
