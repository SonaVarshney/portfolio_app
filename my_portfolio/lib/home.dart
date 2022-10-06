import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.blue])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              Center(
                child: const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/photo.jpg'),
                    radius: 66,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Sona Varshney',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'CSE\'\25 undergrad, IGDTUW',
                style: TextStyle(
                  // fontSize: 30,
                  // fontFamily: 'Lobster',
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 200,
                  shadowColor: Colors.black,
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.person_add,
                        color: Color.fromARGB(255, 22, 29, 66)),
                    title: Text(
                      'Get to know me',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 22, 29, 66)),
                    ),
                    // subtitle: Text(
                    //     'A sufficiently long subtitle warrants three lines.'),
                    // isThreeLine: true,
                    onTap: () {
                      // final Uri _url = Uri.parse('https://www.linkedin.com/');
                      // _launchUrl(_url);
                      launch(
                          'https://drive.google.com/file/d/1HDhqQcborD9SZf0pPFgtb8aKkfDCVsIE/view?usp=sharing');
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 200,
                  shadowColor: Colors.black,
                  color: Colors.white70,
                  child: ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    leading: Icon(Icons.file_copy_outlined,
                        color: Color.fromARGB(255, 22, 29, 66)),
                    title: Text(
                      'My Projects',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 22, 29, 66)),
                    ),

                    onTap: () {
                      Navigator.pushNamed(context, 'projects_page');
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 200,
                  shadowColor: Colors.black,
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.join_full,
                        color: Color.fromARGB(255, 22, 29, 66)),
                    title: Text(
                      'Connect with me over LinkedIn!',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 22, 29, 66)),
                    ),
                    onTap: () {
                      launch('https://www.linkedin.com/in/sona-v29/');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
