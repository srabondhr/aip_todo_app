import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // Top section
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF42C9C9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -80,
                    left: -80,
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 100,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),

                  // Profile + Clock
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/profile.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Welcome Back, User",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16),
                    
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: AnalogClock(
                          datetime: DateTime.now(),
                          hourHandColor: Colors.white,
                          minuteHandColor: Colors.white,
                          secondHandColor: Colors.redAccent,
                          numberColor: Colors.white,
                          tickColor: Colors.white54,
                          showNumbers: true,
                          showAllNumbers: true,
                          textScaleFactor: 1.2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Good Afternoon",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 20),

            // independent scroll
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 300, 
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Daily Task",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Icon(Icons.add, color: Colors.teal),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // ✅ Scrollable Task List
                    Expanded(
                      child: ListView(
                        children: const [
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Learning Programming by 12PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Learn how to cook by 1PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Learn how to play at 2PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Have lunch at 4PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Going to travel 6PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Practice Flutter Widgets at 8PM"),
                          ),
                          ListTile(
                            leading: Icon(Icons.check_box_outline_blank, color: Colors.teal),
                            title: Text("Read a book at 10PM"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
