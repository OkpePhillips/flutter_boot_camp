import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bootcamp App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 3),
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://i.ibb.co/C3TXQrv5/My-passportpic-removebg-preview-1.png',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Passionate Software Engineer with expertise in Flutter and web development. I build scalable, user-friendly applications and enjoy mentoring the next generation of tech talent.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                bool isSmallScreen = constraints.maxWidth < 600;
                return isSmallScreen
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildSkillsSection(),
                          SizedBox(height: 20),
                          buildContactSection(),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: buildSkillsSection()),
                          SizedBox(width: 40),
                          Expanded(child: buildContactSection()),
                        ],
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildContactSection() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Information',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 4),
        Text("Address: Makurdi, Benue State, Nigeria"),
        Text('Email: okpephillips.dev@gmail.com'),
        Text('Phone Number: 08122694518'),
        Text('github: https://github.com/okpephillips'),
      ],
    ),
  );
}

Widget buildSkillsSection() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(height: 4),
        Text("Software Engineering"),
        Text('Mobile Development'),
        Text('Data Analysis'),
        Text('Monitoring and Evaluation'),
      ],
    ),
  );
}
