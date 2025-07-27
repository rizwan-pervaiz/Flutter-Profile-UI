import 'package:flutter/material.dart';
import 'package:simple_ui/profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _nameController = TextEditingController();
  String userName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 106, 255),
        centerTitle: true,
        title: const Text(
          'Welcome to our App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 4,
        shadowColor: Colors.black54,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Avatar
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/rizz.png'),
              radius: 55,
            ),

            const SizedBox(height: 20),

            // Welcome Text
            Text(
              'Welcome ${userName.isEmpty ? 'Guest' : userName}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 40),

            // Input Field
            TextField(
              controller: _nameController,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                labelText: 'Enter your name',
                hintText: 'Type your full name',
                labelStyle: const TextStyle(color: Colors.blueAccent),
                prefixIcon: const Icon(Icons.person_outline),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              maxLength: 32,
            ),

            const SizedBox(height: 20),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    userName = _nameController.text.toUpperCase();
                    _nameController.clear();
                  });
                                          
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profilepage(userName: userName),
                    ),
                  );
                },
                icon: const Icon(Icons.arrow_forward_ios),
                label: const Text(
                  'Continue to Profile',
                  style: TextStyle(fontSize: 16
                ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
