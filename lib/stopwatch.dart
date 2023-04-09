import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchScreen extends StatefulWidget {
  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen> {
  late Stopwatch _stopwatch;
  late Timer _timer;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  @override
  void dispose() {
    super.dispose();
    _stopwatch.stop();
  }

  void _toggleTimer() {
  if (_isRunning) {
    _stopwatch.stop();
    _timer.cancel();
  } else {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {});
    });
  }
  setState(() {
    _isRunning = !_isRunning;
  });
}


  void _resetTimer() {
    setState(() {
      _stopwatch.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = _stopwatch.elapsed.inMinutes.toString().padLeft(2, '0') +
        ':' +
        (_stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0') +
        '.' +
        (_stopwatch.elapsed.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(title: Text('Stopwatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formattedTime,
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(width: 20.0),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _toggleTimer,
              child: Text(_isRunning ? 'Stop' : 'Start'),
            ),
            SizedBox(width: 20.0),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _resetTimer,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
