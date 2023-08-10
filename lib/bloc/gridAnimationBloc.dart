import 'package:flutter_bloc/flutter_bloc.dart';

enum AnimationEvent { startAnimation }

class AnimationBloc extends Bloc<AnimationEvent, bool> {
  AnimationBloc() : super(false);

  @override
  Stream<bool> mapEventToState(AnimationEvent event) async* {
    yield true;
  }
}
