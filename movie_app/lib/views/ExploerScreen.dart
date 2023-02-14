import 'dart:html';

import 'package:flutter/material.dart';

import '../models/Trending.dart';
import '../servers/remote_page.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  List<Trending>? trending;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async{
    trending = await RemoteService().getTrending();
    if(trending != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Visibility(
            visible: isLoaded,
            child: ListView.builder(
                itemCount: trending?.length,
                itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Expanded(
                          child: Column(
                            children: [
                              Text(" ${trending![index].results}")
                            ],
                          )
                      )
                    ],
                  ),
                );
              }
            )
          ),
        ],
      ),
    );
  }
}
