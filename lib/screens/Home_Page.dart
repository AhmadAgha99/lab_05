import 'package:a_two/screens/discvoer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Center(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Discover();
                      }));
                    },
                    icon: Icon(Icons.games_outlined),
                    label: Text("")),
              )
            ],
            title: Row(
              children: [
                Text("Game Zone"),
                Icon(Icons.store),
              ],
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://espnevents.com/wp-content/uploads/2020/02/ESPN_ChampionsClassic_SS_011.jpg"),
                    fit: BoxFit.cover)),
            child: ListView(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Discover();
                      }));
                    },
                    icon: Icon(Icons.store),
                    label: Text("Go To Store Page")),
              ],
            ),
          )),
    );
  }
}
