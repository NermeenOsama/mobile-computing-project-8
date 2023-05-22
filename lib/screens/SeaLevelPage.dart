import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import '../bloc/cubit.dart';

class SeaLevelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home and faculty sea level",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Card(
          margin: EdgeInsets.zero,
          child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
              ListTile(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          tileColor: Colors.blueGrey,
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text(
            "Air pressure at home is ${BarometerCubit
                .get(context)
                .building_bottom_air_pressure
                ?? 0} mmHg",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          tileColor: Colors.blueGrey,
          leading: Icon(CommunityMaterialIcons.office_building,color: Colors.white,),
          title: Text(
            "Air pressure at faculty is ${BarometerCubit
                .get(context)
                .faculty_bottom_air_pressure
                ?? 0} mmHg",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
                    Padding(padding: EdgeInsets.all(8)),

                    Divider(
          height: 10,
          thickness: 2,
          indent: 120,
          endIndent: 120,
          color: Colors.blueGrey,
        ),
        Padding(padding: EdgeInsets.all(8)),
        ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            tileColor: Colors.teal,
            leading: Icon(
              Icons.waves,
              color: Colors.white,
            ),
            title:
             (BarometerCubit
                  .get(context)
                  .building_bottom_air_pressure
                  ?? 0) >= (BarometerCubit
                  .get(context)
                  .faculty_bottom_air_pressure
                  ?? 0)?
                 Text(
                  "Faculty level is higher\nDifference= ${(BarometerCubit
                      .get(context)
                      .faculty_bottom_air_pressure
                      ?? 0)-(BarometerCubit
                      .get(context)
                      .building_bottom_air_pressure
                      ?? 0)} mmHg",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ):
                 Text(
                  "Home level is higher\nDifference= ${(BarometerCubit
                      .get(context)
                      .faculty_bottom_air_pressure
                      ?? 0)-(BarometerCubit
                      .get(context)
                      .building_bottom_air_pressure
                      ?? 0)} mmHg",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),

            )
        )
    ],
    ),
    )),
    );
    }
}
