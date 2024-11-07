import 'package:flutter/material.dart';
import 'package:medical_ecommerce/feauters/check_out/presentation/views/check_out.dart';
import 'package:medical_ecommerce/screens/cart_screen.dart';
import 'package:medical_ecommerce/screens/home_medical.dart';
import 'package:medical_ecommerce/screens/notifcation_screen.dart';
import 'package:medical_ecommerce/screens/profile_screen.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override

  int selesctedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selesctedIndex = index;
      if (selesctedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MedicalHome()),
        );
      } else if (selesctedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartScreen()),
        );
      } else if (selesctedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotifcationScreen()),
        );
      } else if (selesctedIndex == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      }
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Trending',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),


      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Treanding Component1.png",
                  height: 120,
                ),
                const Text("GArnia"),
                const Text("Shampoo"),
                const Text("11 \$"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Treanding Component-2.png",
                  height: 120,
                ),
                const Text("Sunsilk"),
                const Text("cream"),
                const Text("14 \$"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Treanding Component-3.png",
                  height: 120,
                ),
                const Text("Loreal"),
                const Text("Shampoo"),
                const Text("10 \$"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Treanding Component.png",
                  height: 120,
                ),
                const Text("Pantene"),
                const Text("oil"),
                const Text("18 \$"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/photo_2024-10-21_22-31-57.png",
                  height: 120,
                ),
                const Text("dynarex"),
                const Text("Cotton balls"),
                const Text("130 \$"),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/photo_2024-10-21_22-32-03.png",
                  height: 100,
                ),
                const Text("ENGEX Medical Supplies LTD"),
                const Text("Sphygmomanometer"),
                const Text("145 \$"),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selesctedIndex,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
