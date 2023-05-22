abstract class BarometerStates {}

class BarometerInitialStates extends BarometerStates {}
class MeasureBottomPressureState extends BarometerStates {}
class MeasureSurfacePressureState extends BarometerStates {}
class MeasureBuildingHeightState extends BarometerStates {}
class DeadState extends BarometerStates {}