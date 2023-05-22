import 'package:flutter/material.dart';

import '../bloc/cubit.dart';

class BuildingHeightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Air Pressure and building height",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    BarometerCubit.get(context).bottom_pressure();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Pressure on earth ",style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_circle_down)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(175, 40),
                      backgroundColor: Colors.blueGrey
                  )),
              Text(
                "${BarometerCubit.get(context).building_bottom_air_pressure??0} mmHg",style: TextStyle(fontWeight: FontWeight.bold),),
              ElevatedButton(
                  onPressed: () {
                    BarometerCubit.get(context).surface_pressure();
                  },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Pressure on top ",style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_circle_up)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(175, 40),
                      backgroundColor: Colors.blueGrey
                  )),
              Text(
                "${BarometerCubit.get(context).building_surface_air_pressure??0} mmHg",style: TextStyle(fontWeight: FontWeight.bold),),
              ElevatedButton(
                  onPressed: () {
                    BarometerCubit.get(context).height();
                  },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Building height",style: TextStyle(fontWeight: FontWeight.bold,),),
                      Icon(Icons.height_sharp)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(175, 40),
                      backgroundColor: Colors.blueGrey
                  )),
              (BarometerCubit
                  .get(context)
                  .building_height
                  ?? 0) > 0?
              Text(
                "${BarometerCubit.get(context).building_height??0} m",style: TextStyle(fontWeight: FontWeight.bold),):
              Text(
                "inaccurate readings",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),

              )
            ],
          ),
        )
    );
  }
}
