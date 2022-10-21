import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:hire_me/models/user.dart';
import 'package:http/http.dart' as http;

class GitApiState extends ChangeNotifier {
  late GitApiModel user;
  List<GitApiModel> list = [];
  final _token = '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';

  Future<List<GitApiModel>> getPublicProejctList() async {
    var response = await http.get(
        Uri.parse('https://api.github.com/user/repos'),
        headers: {HttpHeaders.authorizationHeader: 'Token $_token'});

    List data = jsonDecode(response.body);
    for (var element in data) {
      user = GitApiModel.fromJson(element);
      if (!user.private) {
        list.add(user);
      }
    }

    return list;
  }
}
