import 'package:flutter/material.dart';
import 'package:hire_me/models/user.dart';
import 'package:hire_me/states/git_api.dart';
import 'package:hire_me/ui/pages/widgets/custom_card.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({super.key});

  final GitApiState _gitApiState = GitApiState();

  Widget _body(context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 189, 221, 247),
            Color.fromARGB(255, 27, 90, 141),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        FutureBuilder(
          future: _gitApiState.getPublicProejctList(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              List<GitApiModel> data = snapshot.data as List<GitApiModel>;
              return ListView(
                children: data
                    .map((e) => CustomCard(
                          projectName: e.name,
                          projectDescription: e.description,
                          language: e.language,
                          fork: e.watchersCount.toString(),
                        ))
                    .toList(),
              );
            } else {
              if (snapshot.hasError) {
                return const Center(
                  child: Text(
                    "Please connect to internet",
                    style: TextStyle(fontSize: 20),
                  ),
                );
              } else {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
              }
            }
          }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Project List"),
      ),
      body: _body(context),
    );
  }
}
