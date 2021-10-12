// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'quiz_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class QuizEvent extends Equatable {
  const QuizEvent(this._type);

  factory QuizEvent.quizlistevent() = Quizlistevent.create;

  factory QuizEvent.quizreportevent(
      {@required dynamic params,
      @required dynamic map,
      @required dynamic index}) = Quizreportevent.create;

  factory QuizEvent.quiznextevent(
      {@required dynamic params,
      @required dynamic map,
      @required dynamic index}) = Quiznextevent.create;

  final _QuizEvent _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _QuizEvent [_type]s defined.
  R when<R extends Object>(
      {@required R Function() quizlistevent,
      @required R Function(Quizreportevent) quizreportevent,
      @required R Function(Quiznextevent) quiznextevent}) {
    assert(() {
      if (quizlistevent == null ||
          quizreportevent == null ||
          quiznextevent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizEvent.Quizlistevent:
        return quizlistevent();
      case _QuizEvent.Quizreportevent:
        return quizreportevent(this as Quizreportevent);
      case _QuizEvent.Quiznextevent:
        return quiznextevent(this as Quiznextevent);
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() quizlistevent,
      R Function(Quizreportevent) quizreportevent,
      R Function(Quiznextevent) quiznextevent,
      @required R Function(QuizEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizEvent.Quizlistevent:
        if (quizlistevent == null) break;
        return quizlistevent();
      case _QuizEvent.Quizreportevent:
        if (quizreportevent == null) break;
        return quizreportevent(this as Quizreportevent);
      case _QuizEvent.Quiznextevent:
        if (quiznextevent == null) break;
        return quiznextevent(this as Quiznextevent);
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() quizlistevent,
      void Function(Quizreportevent) quizreportevent,
      void Function(Quiznextevent) quiznextevent}) {
    assert(() {
      if (quizlistevent == null &&
          quizreportevent == null &&
          quiznextevent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizEvent.Quizlistevent:
        if (quizlistevent == null) break;
        return quizlistevent();
      case _QuizEvent.Quizreportevent:
        if (quizreportevent == null) break;
        return quizreportevent(this as Quizreportevent);
      case _QuizEvent.Quiznextevent:
        if (quiznextevent == null) break;
        return quiznextevent(this as Quiznextevent);
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Quizlistevent extends QuizEvent {
  const Quizlistevent() : super(_QuizEvent.Quizlistevent);

  factory Quizlistevent.create() = _QuizlisteventImpl;
}

@immutable
class _QuizlisteventImpl extends Quizlistevent {
  const _QuizlisteventImpl() : super();

  @override
  String toString() => 'Quizlistevent()';
}

@immutable
abstract class Quizreportevent extends QuizEvent {
  const Quizreportevent(
      {@required this.params, @required this.map, @required this.index})
      : super(_QuizEvent.Quizreportevent);

  factory Quizreportevent.create(
      {@required dynamic params,
      @required dynamic map,
      @required dynamic index}) = _QuizreporteventImpl;

  final dynamic params;

  final dynamic map;

  final dynamic index;

  /// Creates a copy of this Quizreportevent but with the given fields
  /// replaced with the new values.
  Quizreportevent copyWith({dynamic params, dynamic map, dynamic index});
}

@immutable
class _QuizreporteventImpl extends Quizreportevent {
  const _QuizreporteventImpl(
      {@required this.params, @required this.map, @required this.index})
      : super(params: params, map: map, index: index);

  @override
  final dynamic params;

  @override
  final dynamic map;

  @override
  final dynamic index;

  @override
  _QuizreporteventImpl copyWith(
          {Object params = superEnum,
          Object map = superEnum,
          Object index = superEnum}) =>
      _QuizreporteventImpl(
        params: params == superEnum ? this.params : params as dynamic,
        map: map == superEnum ? this.map : map as dynamic,
        index: index == superEnum ? this.index : index as dynamic,
      );
  @override
  String toString() =>
      'Quizreportevent(params: ${this.params}, map: ${this.map}, index: ${this.index})';
  @override
  List<Object> get props => [params, map, index];
}

@immutable
abstract class Quiznextevent extends QuizEvent {
  const Quiznextevent(
      {@required this.params, @required this.map, @required this.index})
      : super(_QuizEvent.Quiznextevent);

  factory Quiznextevent.create(
      {@required dynamic params,
      @required dynamic map,
      @required dynamic index}) = _QuiznexteventImpl;

  final dynamic params;

  final dynamic map;

  final dynamic index;

  /// Creates a copy of this Quiznextevent but with the given fields
  /// replaced with the new values.
  Quiznextevent copyWith({dynamic params, dynamic map, dynamic index});
}

@immutable
class _QuiznexteventImpl extends Quiznextevent {
  const _QuiznexteventImpl(
      {@required this.params, @required this.map, @required this.index})
      : super(params: params, map: map, index: index);

  @override
  final dynamic params;

  @override
  final dynamic map;

  @override
  final dynamic index;

  @override
  _QuiznexteventImpl copyWith(
          {Object params = superEnum,
          Object map = superEnum,
          Object index = superEnum}) =>
      _QuiznexteventImpl(
        params: params == superEnum ? this.params : params as dynamic,
        map: map == superEnum ? this.map : map as dynamic,
        index: index == superEnum ? this.index : index as dynamic,
      );
  @override
  String toString() =>
      'Quiznextevent(params: ${this.params}, map: ${this.map}, index: ${this.index})';
  @override
  List<Object> get props => [params, map, index];
}
