import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Relax extends StatefulWidget {
  @override
  _RelaxState createState() => _RelaxState();
}

class _RelaxState extends State<Relax> {
  VideoPlayerController _controller;

  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();

  @override
  void initState() {
    super.initState();
    player.open(
      Audio("assets/ocean.wav"),
      autoStart: true,
      loopMode: LoopMode.single,
      showNotification: true,
    );
    _controller = VideoPlayerController.asset('assets/ocean.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Adjusted theme colors to match logo.
        primaryColor: Color(0xffb55e28),
        accentColor: Color(0xffffd544),
      ),
      home: SafeArea(
        child: Scaffold(
          // TODO 6: Create a Stack Widget
          body: Stack(
            children: <Widget>[
              // TODO 7: Add a SizedBox to contain our video.
              SizedBox.expand(
                child: FittedBox(
                  // If your background video doesn't look right, try changing the BoxFit property.
                  // BoxFit.fill created the look I was going for.
                  fit: BoxFit.fill,
                  child: SizedBox(
                    width: _controller.value.size?.width ?? 2,
                    height: _controller.value.size?.height ?? 2,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
              // LoginWidget()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    player.dispose();
  }
}
