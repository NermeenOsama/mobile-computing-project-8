import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_barometer_plugin/flutter_barometer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:air_pressure/bloc/state.dart';


class BarometerCubit extends Cubit<BarometerStates> {
  BarometerCubit() : super(BarometerInitialStates());

  static BarometerCubit get(context) => BlocProvider.of(context);
  double faculty_bottom_air_pressure= 752.5091537077526 ;
  double? faculty_surface_air_pressure=750.959949759792;
  double? building_bottom_air_pressure ;
  double? building_surface_air_pressure;
  double? faculty_height=16.5899005450089503;
  double? building_height;
  List<StreamSubscription<dynamic>> streamSubscriptions =
  <StreamSubscription<dynamic>>[];
  void bottom_pressure() {
    streamSubscriptions.add(
        FlutterBarometer.currentPressureEvent.listen((event) {
          building_bottom_air_pressure = event.millimeterOfMercury;
          dead();
          emit(MeasureBottomPressureState());
        })
    );

  }

  void surface_pressure() {
    streamSubscriptions.add(
        FlutterBarometer.currentPressureEvent.listen((event) {
          building_surface_air_pressure = event.millimeterOfMercury;
          dead();
          emit(MeasureSurfacePressureState());
    }));
  }
  void height() {
          building_height =((13600*(building_bottom_air_pressure!-building_surface_air_pressure!))/1.2754)/1000;
          emit(MeasureBuildingHeightState());
  }
  dead(){
  for (StreamSubscription<dynamic> subscription in streamSubscriptions) {
    subscription.cancel();
  }
}
}
