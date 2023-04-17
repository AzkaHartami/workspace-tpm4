import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchScreen extends StatefulWidget {
  @override
  _StopwatchScreenState createState() => _StopwatchScreenState();
}

class _StopwatchScreenState extends State<StopwatchScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Stopwatch _stopwatch;
  late Timer _timer;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _stopwatch.stop();
    _animationController.dispose();
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
    String formattedTime =
        _stopwatch.elapsed.inMinutes.toString().padLeft(2, '0') +
            ':' +
            (_stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, '0') +
            '.' +
            (_stopwatch.elapsed.inMilliseconds % 1000 ~/ 10)
                .toString()
                .padLeft(2, '0');
    return Scaffold(
      appBar: AppBar(title: Text('Stopwatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: Text(
                formattedTime,
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  iconSize: 50.0,
                  color: Colors.green,
                  onPressed: () {
                    _toggleTimer();
                    _animationController.forward().then((value) {
                      _animationController.reverse();
                    });
                  },
                ),
                SizedBox(width: 20.0),
                IconButton(
                  icon: Icon(Icons.restore),
                  iconSize: 50.0,
                  color: Colors.red,
                  onPressed: () {
                    _resetTimer();
                    _animationController.reset();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
