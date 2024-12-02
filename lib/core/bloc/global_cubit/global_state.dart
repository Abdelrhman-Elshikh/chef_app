part of 'global_cubit.dart';

@immutable
sealed class GlobalState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class GlobalInitial extends GlobalState {
  final String languageCode;

  GlobalInitial(this.languageCode);

  @override
  List<Object?> get props => [languageCode];
}