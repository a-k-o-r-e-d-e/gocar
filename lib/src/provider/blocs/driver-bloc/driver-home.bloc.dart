import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:gocar/src/entity/entities.dart';
import 'package:rxdart/rxdart.dart';

class DriveHomeBloc extends BlocBase {
  final BehaviorSubject<StepPassengerHome> _stepProcessController =
      new BehaviorSubject<StepPassengerHome>();

  Stream<StepPassengerHome> get stepProcessFlux =>
      _stepProcessController.stream;

  Sink<StepPassengerHome> get stepProcessEvent => _stepProcessController.sink;

  final BehaviorSubject<StepDriverHome> _stepDriverController =
      new BehaviorSubject<StepDriverHome>();

  Stream<StepDriverHome> get stepDriverFlux => _stepDriverController.stream;

  Sink<StepDriverHome> get stepDriverEvent => _stepDriverController.sink;

  final BehaviorSubject<String> _timeController = new BehaviorSubject<String>();

  Stream<String> get timeFlux => _timeController.stream;

  Sink<String> get timeEvent => _timeController.sink;

  /*price / distance management */
  final BehaviorSubject<CarType> _carTypeController =
      new BehaviorSubject<CarType>();

  Stream<CarType> get carTypeFlux => _carTypeController.stream;

  Sink<CarType> get carTypeEvent => _carTypeController.sink;

  /*end trip*/

  DriveHomeBloc();

  @override
  void dispose() {
    _carTypeController?.close();
    _stepDriverController?.close();
    _stepProcessController?.close();
    _timeController?.close();
    super.dispose();
  }
}
