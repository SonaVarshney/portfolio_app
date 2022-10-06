import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'My projects',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                  elevation: 200,
                  shadowColor: Colors.black,
                  color: Colors.white70,
                  child: ListTile(
                    leading:
                        Icon(Icons.web, color: Color.fromARGB(255, 22, 29, 66)),
                    title: Text(
                      'Project 1 \n \n Basic Frontend Website for a tech fest using HTML and CSS',
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
                      launch('https://exquisite-pothos-a44cee.netlify.app/');
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
                    leading:
                        Icon(Icons.web, color: Color.fromARGB(255, 22, 29, 66)),
                    title: Text(
                      'Project 2 \n \n Basic Frontend Website for a shopping website using HTML and CSS',
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
                      launch('https://amazing-tulumba-65ae36.netlify.app/');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
