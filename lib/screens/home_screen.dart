import 'package:flutter/material.dart';
import 'package:medical_ecommerce/screens/trending_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    const Text(
                      "Black Friday'"
                      "50% off ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Quality medical supplies\n at competitive prices",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Buy & sell",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 200,
                    width: 100,
                    child: Image.asset("assets/images/HomeScreen.png"),
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/img Component.png"),
                    const Text("Rathi Cannula"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/img Component-2.png"),
                    const Text("Thermometer"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/img Component-3.png"),
                    const Text("Ultrasound"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                        "assets/images/photo_2024-10-20_23-25-50 1.png"),
                    const Text("SInhalerx"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
           Row(
            children: [
             const  Text(
                "Trending Today",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            const   SizedBox(
                width: 120,
              ),
            const   Text(
                "View all",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
           const    SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push
                  (context, MaterialPageRoute(builder: (context) => TrendingScreen()));
                },
                icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Treanding Component1.png"),
                    const Text("GArnia"),
                    const Text("Shampoo"),
                    const Text("11 \$"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/Treanding Component-2.png"),
                    const Text("Sunsilk"),
                    const Text("cream"),
                    const Text("14 \$"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/Treanding Component-3.png"),
                    const Text("Pantene"),
                    const Text("oil"),
                    const Text("18 \$"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Recommended for you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Recomended.png"),
                    const Text("Blood transfusion set"),
                    const Text("Millpledge Ltd"),
                    const Text("23 \$"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/Recomended-2.png"),
                    const Text("Walker"),
                    const Text("FIJO"),
                    const Text("150 \$"),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/images/Recomended-3.png"),
                    const Text("Stethoscope"),
                    const Text("Littmann"),
                    const Text("190 \$"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Image.asset(
              "assets/images/photo_2024-10-21_20-33-55.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
