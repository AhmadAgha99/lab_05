import 'package:a_two/models/urlModel.dart';
import 'package:a_two/screens/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Welcome To Game Zone"),
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.videogame_asset)),
              IconButton(onPressed: () {}, icon: Icon(Icons.games)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: ListView(
              children: [
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.304d1c388d73de3d9f32477ca67e239e?rik=DB2GPdtF93F2vA&riu=http%3a%2f%2fwww.sonyrumors.net%2fwp-content%2fuploads%2f2016%2f07%2fPS4_Beta.jpg&ehk=I35FNkjoZ58SQM0w%2biK9hofzB3tQTnquSWFoaLoy1Uc%3d&risl=&pid=ImgRaw&r=0")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("300 jd"),
                ),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.c04430eb1fdce421974b15677c5a7df8?rik=X90XFhUH%2bqxovg&pid=ImgRaw&r=0")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("550 jd"),
                ),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.b4ea3f106439a34a84fb1d2beb67c82f?rik=R6OKGD8mLPi6nQ&pid=ImgRaw&r=0")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("420 jd"),
                ),
              ],
            ),
          ),
          Container(
            child: ListView(
              children: [
                Image(
                    image: NetworkImage(
                        "https://i.roamcdn.net/hz/qe/listing-gallery-full-1920w/467a76dafe5fce2fb7a0999ef146e3b4/-/horizon-files-prod/qe/picture/qwj56dk/bc55b67e58a6ef22fbfa0876da9f4aa8525228db.jpg")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("45 jd"),
                ),
                Image(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.d39c618666b49e24fa82b1550f46725c?rik=8Yj7AIZxtujIAg&pid=ImgRaw&r=0")),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text("23 jd"),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.fe2d32a5bb7a4cc3e020aec19e225530?rik=aqSZ79UgE4Y6xw&pid=ImgRaw&r=0"),
                    fit: BoxFit.cover)),
            child: ListView(
              children: [
                URlClass(
                  myfunction: Facebook_Function,
                  myplatformIcon: Icons.facebook,
                  myplatformSubTitle: "join our facebook page",
                  myplatformTitle: "Facebook",
                ),
                URlClass(
                  myfunction: instagram_function,
                  myplatformIcon: Ionicons.logo_instagram,
                  myplatformSubTitle: "join our instagram page",
                  myplatformTitle: "Instagram",
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    icon: Icon(Icons.home),
                    label: Text("Home Page")),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
