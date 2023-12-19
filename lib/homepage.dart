import 'package:flutter/material.dart';
import 'personal_info_screen.dart';
import 'educational_background.dart';
import 'Skills.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Curriculum Vitae'),
        ),
        backgroundColor: Color.fromARGB(255, 56, 148, 59),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 56, 148, 59),
                radius: 72,
                child: CircleAvatar(
                  radius: 68,
                  backgroundImage: AssetImage('images/shy.jpg'),
                ),
              ),
            ),
          ),
          const Divider(
            height: 0,
            color: Color.fromARGB(255, 105, 248, 110),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'NAME:',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontFamily: 'RobotoMono'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
          child: Text(
            'Shyla Jhane A. Caparros.',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 20,
              color: Colors.green,
            ),
          ),),
          
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 200, 0),
            child: Text(
            'WORK INDUSTRY:',
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 20,
                  color: Colors.green),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Text(
              'I.T Technician',
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Color.fromARGB(255, 82, 221, 86),
                  fontSize: 20),
            ),
          ),
          Divider(
            height: 5,
            color: Color.fromARGB(255, 82, 221, 86),
          ),
          Text(
            'CONTACT ME',
            style: TextStyle(
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 82, 221, 86),
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.green,
                ),
                Text(
                  '09918085644',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                Text(
                  'shycaprrs@gmail.com',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.green,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            color: Color.fromARGB(255, 26, 161, 87),
          ),
          Text(
            'SOCIAL MEDIA',
            style: TextStyle(
              color: Color.fromARGB(255, 82, 221, 86),
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(80, 20, 0, 0),
            child: Row(children: [
              Icon(
                Icons.facebook,
                color: Color.fromARGB(255, 82, 221, 86),
              ),
              Text(
                'shyycaparros',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Color.fromARGB(255, 82, 221, 86),
                  fontSize: 25,
                ),
              ),
            ]),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                child: IconButton(
                  iconSize: 30,
                  icon: const Icon(
                    Icons.info,
                    color: Color.fromARGB(255, 82, 221, 86),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalInfoScreen(),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 30, 0, 0),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(
                        Icons.school,
                        color: Color.fromARGB(255, 82, 221, 86),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EducationalBackgroundScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 30, 0, 0),
                    child: IconButton(
                      iconSize: 40,
                      icon: const Icon(
                        Icons.build_circle,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SkillsScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}