import 'package:equatable/equatable.dart';

class DrugEntity extends Equatable{
  String patientName;
  String drugTime;
  String drugName;
  String drugQuantity;
  String noOfCapsules;
  String reminderTime;
 DrugEntity({
    required this.patientName,
    required this.drugTime,
    required this.drugName,
    required this.drugQuantity,
    required this.noOfCapsules,
    required this.reminderTime,
});
  @override
  // TODO: implement props
  List<Object?> get props => [patientName,drugTime,drugName,drugQuantity,noOfCapsules,reminderTime];

}