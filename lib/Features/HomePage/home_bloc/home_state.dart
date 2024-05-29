import 'package:equatable/equatable.dart';

class EventStates extends Equatable{
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final bool isAllday;

  EventStates({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    required this.isAllday,
  });

  static EventStates empty = EventStates(
      title: "",
      description: '',
      from: DateTime.now(),
      to: DateTime.now(),
      isAllday: false);

  @override
  // TODO: implement props
  List<Object?> get props => [
    title, description, from, to, isAllday
  ];

  EventStates copyWith({
     String? title,
     String? description,
     DateTime? from,
     DateTime? to,
     bool? isAllday,
  }){
    return EventStates(title: title?? this.title,
        description: description?? this.description,
        from: from?? this.from , to: to?? this.to, isAllday: isAllday?? this.isAllday);
  }

}