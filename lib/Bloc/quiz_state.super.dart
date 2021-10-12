// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'quiz_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class QuizState extends Equatable {
  const QuizState(this._type);

  factory QuizState.initial() = Initial.create;

  factory QuizState.loading() = Loading.create;

  factory QuizState.quizs(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic respons3}) = Quizs.create;

  factory QuizState.quiznext(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic respons3}) = Quiznext.create;

  factory QuizState.finalreport(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic response3,
      @required dynamic respons4}) = Finalreport.create;

  factory QuizState.error() = Error.create;

  final _QuizState _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _QuizState [_type]s defined.
  R when<R extends Object>(
      {@required R Function() initial,
      @required R Function() loading,
      @required R Function(Quizs) quizs,
      @required R Function(Quiznext) quiznext,
      @required R Function(Finalreport) finalreport,
      @required R Function() error}) {
    assert(() {
      if (initial == null ||
          loading == null ||
          quizs == null ||
          quiznext == null ||
          finalreport == null ||
          error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizState.Initial:
        return initial();
      case _QuizState.Loading:
        return loading();
      case _QuizState.Quizs:
        return quizs(this as Quizs);
      case _QuizState.Quiznext:
        return quiznext(this as Quiznext);
      case _QuizState.Finalreport:
        return finalreport(this as Finalreport);
      case _QuizState.Error:
        return error();
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() initial,
      R Function() loading,
      R Function(Quizs) quizs,
      R Function(Quiznext) quiznext,
      R Function(Finalreport) finalreport,
      R Function() error,
      @required R Function(QuizState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizState.Initial:
        if (initial == null) break;
        return initial();
      case _QuizState.Loading:
        if (loading == null) break;
        return loading();
      case _QuizState.Quizs:
        if (quizs == null) break;
        return quizs(this as Quizs);
      case _QuizState.Quiznext:
        if (quiznext == null) break;
        return quiznext(this as Quiznext);
      case _QuizState.Finalreport:
        if (finalreport == null) break;
        return finalreport(this as Finalreport);
      case _QuizState.Error:
        if (error == null) break;
        return error();
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() initial,
      void Function() loading,
      void Function(Quizs) quizs,
      void Function(Quiznext) quiznext,
      void Function(Finalreport) finalreport,
      void Function() error}) {
    assert(() {
      if (initial == null &&
          loading == null &&
          quizs == null &&
          quiznext == null &&
          finalreport == null &&
          error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _QuizState.Initial:
        if (initial == null) break;
        return initial();
      case _QuizState.Loading:
        if (loading == null) break;
        return loading();
      case _QuizState.Quizs:
        if (quizs == null) break;
        return quizs(this as Quizs);
      case _QuizState.Quiznext:
        if (quiznext == null) break;
        return quiznext(this as Quiznext);
      case _QuizState.Finalreport:
        if (finalreport == null) break;
        return finalreport(this as Finalreport);
      case _QuizState.Error:
        if (error == null) break;
        return error();
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Initial extends QuizState {
  const Initial() : super(_QuizState.Initial);

  factory Initial.create() = _InitialImpl;
}

@immutable
class _InitialImpl extends Initial {
  const _InitialImpl() : super();

  @override
  String toString() => 'Initial()';
}

@immutable
abstract class Loading extends QuizState {
  const Loading() : super(_QuizState.Loading);

  factory Loading.create() = _LoadingImpl;
}

@immutable
class _LoadingImpl extends Loading {
  const _LoadingImpl() : super();

  @override
  String toString() => 'Loading()';
}

@immutable
abstract class Quizs extends QuizState {
  const Quizs(
      {@required this.response,
      @required this.respons2,
      @required this.respons3})
      : super(_QuizState.Quizs);

  factory Quizs.create(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic respons3}) = _QuizsImpl;

  final dynamic response;

  final dynamic respons2;

  final dynamic respons3;

  /// Creates a copy of this Quizs but with the given fields
  /// replaced with the new values.
  Quizs copyWith({dynamic response, dynamic respons2, dynamic respons3});
}

@immutable
class _QuizsImpl extends Quizs {
  const _QuizsImpl(
      {@required this.response,
      @required this.respons2,
      @required this.respons3})
      : super(response: response, respons2: respons2, respons3: respons3);

  @override
  final dynamic response;

  @override
  final dynamic respons2;

  @override
  final dynamic respons3;

  @override
  _QuizsImpl copyWith(
          {Object response = superEnum,
          Object respons2 = superEnum,
          Object respons3 = superEnum}) =>
      _QuizsImpl(
        response: response == superEnum ? this.response : response as dynamic,
        respons2: respons2 == superEnum ? this.respons2 : respons2 as dynamic,
        respons3: respons3 == superEnum ? this.respons3 : respons3 as dynamic,
      );
  @override
  String toString() =>
      'Quizs(response: ${this.response}, respons2: ${this.respons2}, respons3: ${this.respons3})';
  @override
  List<Object> get props => [response, respons2, respons3];
}

@immutable
abstract class Quiznext extends QuizState {
  const Quiznext(
      {@required this.response,
      @required this.respons2,
      @required this.respons3})
      : super(_QuizState.Quiznext);

  factory Quiznext.create(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic respons3}) = _QuiznextImpl;

  final dynamic response;

  final dynamic respons2;

  final dynamic respons3;

  /// Creates a copy of this Quiznext but with the given fields
  /// replaced with the new values.
  Quiznext copyWith({dynamic response, dynamic respons2, dynamic respons3});
}

@immutable
class _QuiznextImpl extends Quiznext {
  const _QuiznextImpl(
      {@required this.response,
      @required this.respons2,
      @required this.respons3})
      : super(response: response, respons2: respons2, respons3: respons3);

  @override
  final dynamic response;

  @override
  final dynamic respons2;

  @override
  final dynamic respons3;

  @override
  _QuiznextImpl copyWith(
          {Object response = superEnum,
          Object respons2 = superEnum,
          Object respons3 = superEnum}) =>
      _QuiznextImpl(
        response: response == superEnum ? this.response : response as dynamic,
        respons2: respons2 == superEnum ? this.respons2 : respons2 as dynamic,
        respons3: respons3 == superEnum ? this.respons3 : respons3 as dynamic,
      );
  @override
  String toString() =>
      'Quiznext(response: ${this.response}, respons2: ${this.respons2}, respons3: ${this.respons3})';
  @override
  List<Object> get props => [response, respons2, respons3];
}

@immutable
abstract class Finalreport extends QuizState {
  const Finalreport(
      {@required this.response,
      @required this.respons2,
      @required this.response3,
      @required this.respons4})
      : super(_QuizState.Finalreport);

  factory Finalreport.create(
      {@required dynamic response,
      @required dynamic respons2,
      @required dynamic response3,
      @required dynamic respons4}) = _FinalreportImpl;

  final dynamic response;

  final dynamic respons2;

  final dynamic response3;

  final dynamic respons4;

  /// Creates a copy of this Finalreport but with the given fields
  /// replaced with the new values.
  Finalreport copyWith(
      {dynamic response,
      dynamic respons2,
      dynamic response3,
      dynamic respons4});
}

@immutable
class _FinalreportImpl extends Finalreport {
  const _FinalreportImpl(
      {@required this.response,
      @required this.respons2,
      @required this.response3,
      @required this.respons4})
      : super(
            response: response,
            respons2: respons2,
            response3: response3,
            respons4: respons4);

  @override
  final dynamic response;

  @override
  final dynamic respons2;

  @override
  final dynamic response3;

  @override
  final dynamic respons4;

  @override
  _FinalreportImpl copyWith(
          {Object response = superEnum,
          Object respons2 = superEnum,
          Object response3 = superEnum,
          Object respons4 = superEnum}) =>
      _FinalreportImpl(
        response: response == superEnum ? this.response : response as dynamic,
        respons2: respons2 == superEnum ? this.respons2 : respons2 as dynamic,
        response3:
            response3 == superEnum ? this.response3 : response3 as dynamic,
        respons4: respons4 == superEnum ? this.respons4 : respons4 as dynamic,
      );
  @override
  String toString() =>
      'Finalreport(response: ${this.response}, respons2: ${this.respons2}, response3: ${this.response3}, respons4: ${this.respons4})';
  @override
  List<Object> get props => [response, respons2, response3, respons4];
}

@immutable
abstract class Error extends QuizState {
  const Error() : super(_QuizState.Error);

  factory Error.create() = _ErrorImpl;
}

@immutable
class _ErrorImpl extends Error {
  const _ErrorImpl() : super();

  @override
  String toString() => 'Error()';
}
