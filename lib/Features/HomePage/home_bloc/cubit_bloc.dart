import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mindful_app/Features/HomePage/home_bloc/home_state.dart';

class EventBloc extends Cubit<EventStates>{
  EventBloc(): super(EventStates.empty);

  void saveUserEvent(newValue)async{
    emit(state.copyWith(title: newValue,
        description: newValue,
        from: newValue,
        to: newValue,
        isAllday: newValue ));
  }

}