import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Developer Profile',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal()),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Text('Navigation'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
            ],
          ),
        ),
        body: Stack(children: [
          // Background Image (full screen)
          Positioned.fill(
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
          // Content with padding (adjust padding as needed)
          Positioned(
              bottom: 0.0, // Positioned at the bottom
              left: 0.0, // Positioned at the left
              right: 0.0, // Occupies full width
              top: kToolbarHeight, // Start below the app bar height
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 105.0)),
                    const CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage('assets/images/profile.jpeg'),
                    ),
                    const Row(children: [
                      SizedBox(width: 80),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Iyanah Taryouway',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Junior Software Developer',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.pink),
                            ),
                            Text(
                              'Red Deer, Alberta, Canada',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic),
                            ),
                          ]),
                    ]),
                    const SizedBox(height: 20),
                    const Divider(color: Colors.transparent, thickness: 5),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('assets/images/linkedin.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Image(
                            image: AssetImage('assets/images/github.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Image(
                            image: AssetImage('assets/images/X.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Image(
                            image: AssetImage('assets/images/youtube.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          Image(
                            image: AssetImage('assets/images/medium.png'),
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          )
                        ]),
                    const SizedBox(height: 20),
                    const Text(
                      'About Me',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(color: Colors.pink, thickness: 10),
                    const Text(
                      'As a recent graduate of Software Development from Red Deer Polytechnic, I bring a blend of technical skills and practical experience. My background in software product management and customer support has equipped me with a deep understanding of user needs and the ability to deliver effective solutions.\n\nProficient in Java, SQL, Node.js, Express.js, Flutter, Dart, HTML, and CSS, I am eager to apply my full-stack development skills to real-world challenges. Through academic projects, I have honed my problem-solving and critical thinking abilities, enabling me to approach complex tasks with creativity and efficiency.\n\nI am a collaborative team player with strong communication skills, excited to contribute to innovative projects and make a positive impact.',
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Hobbies',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(color: Colors.pink, thickness: 10),
                    SizedBox(
                      height: 350, // Adjust height as needed
                      child: ListView.builder(
                        itemCount: hobbies.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(Icons.check),
                            title: Text(hobbies[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ))
        ]));
  }

  final List<String> hobbies = [
    'Reading Books',
    'Traveling',
    'Cooking',
    'Baking',
    'Investing',
    'Biking',
    'Playing Board Games',
    'Swimming',
    'Traveling',
    'Singing',
    'Dancing',
    'Volunteering',
    'Mixing Coffee Drinks',
    'Running',
    'Yoga',
  ];

  get children => null;
}


