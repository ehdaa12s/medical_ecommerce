import 'package:flutter/material.dart';

class MedicalHome extends StatefulWidget {
  const MedicalHome({super.key});

  @override
  State<MedicalHome> createState() => _MedicalHomeState();
}

class _MedicalHomeState extends State<MedicalHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding:const  EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon:const  Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
           const  SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){},style: TextButton.styleFrom(
      iconColor: Colors.black,
                  backgroundColor: Colors.black,
                ), child: const Text("Surgical Equipment",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:15,
                ),)
                ,

                ),
                TextButton(onPressed: (){}, child: const Text("Medical Examination",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),)
                  ,style: TextButton.styleFrom(
                    iconColor: Colors.black,
                    backgroundColor: Colors.grey,

                  ),

                ),
                TextButton(onPressed: (){}, child: const Text("Sterilization",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),)
                  ,style: TextButton.styleFrom(
                    iconColor: Colors.black,
                    backgroundColor: Colors.grey,

                  ),

                ),
              ],
            ),
            ),
            const SizedBox(
              height: 10,
            ),


           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/medical_home1.png",
                        height: 150,
                      ),
                      const Text("Melag Vacuklav "
                          "\n24BL + 29 L Autoclave",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                      const Text("Sterilization tool"),
                      const Text("5677 \$"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/medical_home2.png",
                        height: 150,
                      ),
                      const Text("Aarikart: Medical\n & Hospital Equipment",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),
                      const Text("Medical examination tool"),
                      const Text("9999 \$"),
                    ],
                  ),
                ),
                ],
           ),
            const SizedBox(
              height: 10,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/medical_home3.png",
                        height: 150,
                      ),
                      const Text("orthopaedic surgey instruments",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),
                      const Text("Surgical equipment "),
                      const Text("279 \$"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/medical_home4.png",
                        height: 150,
                      ),
                      const Text("The Daily Care Set",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),),
                      const Text("Daily care supplies"),
                      const Text("140 \$"),
                    ],
                  ),
                ),
              ],
            ),





              ],
            ),

      ),
    );
  }
}
