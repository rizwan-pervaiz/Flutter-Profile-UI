import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  final String userName;

  const Profilepage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            const SizedBox(height: 10),
            buildAboutMeSection(),
            const SizedBox(height: 10),
            buildSkillsSection(),
            const SizedBox(height: 10),
            buildProjectsSection(),
            const SizedBox(height: 10),
            buildAchievementsSection(),
            const SizedBox(height: 10),
            buildContactSection(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
        gradient: const LinearGradient(
          colors: [Colors.lightBlueAccent, Colors.amber],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Logout
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Profile Page',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              IconButton(
                icon: const Icon(Icons.logout_outlined,
                    color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/rizz.png'),
                radius: 30,
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Welcome Back!',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Text(userName,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget styledContainer({required Widget child, required List<Color> colors}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.fromLTRB(28, 14, 28, 14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [BoxShadow(blurRadius: 15)],
        borderRadius: const BorderRadius.only(
          topRight: Radius.elliptical(60, 50),
          bottomLeft: Radius.elliptical(60, 45),
          topLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: child,
    );
  }

  Widget buildAboutMeSection() {
    return styledContainer(
      colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            children: [
              Icon(Icons.menu_book_rounded, color: Colors.yellow),
              SizedBox(width: 6),
              Text("About Me",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 8),
          Text(
            '"I am a passionate Flutter developer who loves creating beautiful UIs!"',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkillsSection() {
    return styledContainer(
      colors: [Colors.teal, Colors.blue],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.code, color: Colors.pinkAccent),
              SizedBox(width: 6),
              Text("Skills",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/icons/dart.png", height: 30),
              Image.asset("assets/icons/flutter.png", height: 30),
              Image.asset("assets/icons/firebase.png", height: 30),
              Image.asset("assets/icons/git.png", height: 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildProjectsSection() {
    return styledContainer(
      colors: [Colors.indigo, Colors.deepPurple],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            children: [
              Icon(Icons.folder, color: Colors.amber),
              SizedBox(width: 6),
              Text("Projects",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 8),
          Text("• Quiz App\n• Todo List\n• Weather UI",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }

  Widget buildAchievementsSection() {
    return styledContainer(
      colors: [Color(0xFF134E5E), Color(0xFF71B280)],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            children: [
              Icon(Icons.emoji_events, color: Colors.white),
              SizedBox(width: 6),
              Text("Achievements",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 8),
          Text("🏆 100+ Hours of Flutter\n📜 Certified in Dart Basics",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }

  Widget buildContactSection() {
    return styledContainer(
      colors: [Colors.green, Colors.lightGreen],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Row(
            children: [
              Icon(Icons.phone_android, color: Colors.white),
              SizedBox(width: 6),
              Text("Contact Info",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
          SizedBox(height: 8),
          Text("📧 rizwanpervaiz22@gmail.com\n🔗 github.com/rizwan-pervaiz",
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
