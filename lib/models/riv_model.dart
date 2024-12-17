import 'package:rive/rive.dart';

class RivModel {
  final String src, artboard, StateMachineName;
  late SMIBool? status;

  RivModel(
      {required this.src,
      required this.artboard,
      required this.StateMachineName,
      this.status});
  set SetStatus(SMIBool state) {
    status = state;
  }
}
