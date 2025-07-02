import 'dart:async';
import 'package:catching_kawa_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key});

  @override
  _OtpTimerState createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  late Timer _timer;
  int _secondsRemaining = 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _secondsRemaining = 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        _timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      S
          .of(context)
          .Resend_code_time(_secondsRemaining.toString().padLeft(2, '0')),
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
