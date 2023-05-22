import 'package:flutter/material.dart';
import 'BuildingHeightPage.dart';
import 'SeaLevelPage.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Barometer",
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuildingHeightPage();
                }));
              },
              child: Container(
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.teal),
                  height: 150,
                  width: 200,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.height_rounded,color: Colors.white,size:50,),
                          const Icon(Icons.home,color: Colors.white,size:50,),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Text(
                        "Air pressure and height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SeaLevelPage();
                }));
              },
              child: Container(
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey),
                  height: 150,
                  width: 200,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.height_rounded,color: Colors.white,size:50,),
                          const Icon(Icons.waves,color: Colors.white,size:50,),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Text(
                        "Sea level",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
