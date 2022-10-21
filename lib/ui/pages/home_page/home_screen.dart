import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as URLLauncher;
import '../widgets/chart_bar.dart';
import '../widgets/new_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBars(context),
        body: _body(context),
      ),
    );
  }

  Widget _profile(context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    const description =
        "Hi I'm Prakhar Jaiswal from Bilaspur, I have been learning flutter for few months";
    return Card(
      elevation: 10,
      borderOnForeground: false,
      surfaceTintColor: Colors.black,
      margin: const EdgeInsets.all(3),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Prakhar Jaiswal",
                style: TextStyle(
                    fontSize: 20 * textScaleFactor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Bio :",
                    style: TextStyle(
                        fontSize: 16 * textScaleFactor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 16 * textScaleFactor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Date Of Birth :",
                    style: TextStyle(
                        fontSize: 16 * textScaleFactor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "03-March-2001",
                    style: TextStyle(fontSize: 16 * textScaleFactor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Education :",
                    style: TextStyle(
                        fontSize: 16 * textScaleFactor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "B.Tech(Computer Science & Engineering)",
                    style: TextStyle(fontSize: 16 * textScaleFactor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _skill(context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Card(
      elevation: 10,
      borderOnForeground: false,
      surfaceTintColor: Colors.black,
      margin: const EdgeInsets.all(3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "Flutter",
                      value: .3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "Figma",
                      value: .1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "Godot3",
                      value: .1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "Python",
                      value: .2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "Inkscape",
                      value: 0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChartBar(
                      label: "GIMP",
                      value: .5,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _contact(context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Card(
      elevation: 10,
      borderOnForeground: false,
      surfaceTintColor: Colors.black,
      margin: const EdgeInsets.all(3),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "Prakhar Jaiswal",
                style: TextStyle(
                    fontSize: 20 * textScaleFactor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on),
                  Text(
                    "Akaltara, Janjgir-Champa,Chattishgarh,",
                    style: TextStyle(fontSize: 18 * textScaleFactor),
                  ),
                ],
              ),
            ),
            Text(
              "India",
              style: TextStyle(fontSize: 18 * textScaleFactor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () async {
                        await URLLauncher.launch("tel://7987590643");
                      },
                      icon: const Icon(Icons.phone),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.email),
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _body(context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          // backgroud
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 189, 221, 247),
            Color.fromARGB(255, 27, 90, 141),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2 - 50,
                child: Image.asset(
                  'assets/pj.png',
                ),
                // color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      backgroundBlendMode: BlendMode.hardLight,
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: const TabBar(
                    indicatorColor: Colors.lightBlue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.person,
                        ),
                        text: "Profile",
                      ),
                      Tab(
                        icon: Icon(
                          Icons.laptop,
                        ),
                        text: "Skill",
                      ),
                      Tab(
                        icon: Icon(
                          Icons.contact_mail,
                        ),
                        text: "Contact",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * .3,
                // color: Colors.amber,
                child: TabBarView(
                  children: [
                    _profile(context),
                    _skill(context),
                    _contact(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
