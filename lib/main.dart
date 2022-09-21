import 'package:flutter/material.dart';

// function to trigger build when the app is run
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
    },
  )); //MaterialApp
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: Colors.teal,
      ), // AppBar
      body: SafeArea(
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.green[200],
              backgroundImage: AssetImage('images/peepodance.gif'),
            ),
            Text(
              'Jan Mark Calugay',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Web-Developer',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Digital Illustrator',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+63955684170',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'janmarkcalugay@email.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.teal,
                ),
                title: Text(
                  'Dalanguiring Urbiztondo,Pangasinan',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ), // ElevatedButton
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal, // background
                  onPrimary: Colors.white, // foreground
                ),
              child: const Text('Professional Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.teal,
      ), // AppBar
      body: Center(
        child: Column(



          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Tertiary Education ',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                    ),
                  ),


                ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2020-2024'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.teal,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Dalanguiring Integrated School',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('Senior High School 2018-2020'
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Dalanguiring Integrated School',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2018'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.teal,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Dalanguiring Integrated School',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2012-2016'
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.teal,
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'NCII in Computer Servicing',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text('2022'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professional Background"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.teal,
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("I'm a programmer and a digital illustrator freshly graduated out of college with skills and knowledge in said expertise"
                ),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(

                title: Text(
                  'Skills',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.brush,
                  color: Colors.teal,
                ),
                title: Text(
                  'Digital Illustration',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text("I can bring your ideas into reality using digital illustration. I can do storyboards, illustrations and character designs"
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.web_rounded,
                  color: Colors.teal,
                ),
                title: Text(
                  'Web-Development',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
                subtitle: Text("I have extensive knowledge in web-development using the PHP framework called Laravel. I can create professional websites working with great efficiency and with pleasing aesthetics"
                ),
              ),
            ),
          ],

        ),
      ), /// AppBar

    ); // Scaffold
  }
}
