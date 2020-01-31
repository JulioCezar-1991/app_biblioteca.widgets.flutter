import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayPage extends StatefulWidget {
  final String title;
  const AudioPlayPage({Key key, this.title = "Audio"}) : super(key: key);

  @override
  _AudioPlayPageState createState() => _AudioPlayPageState();
}

class _AudioPlayPageState extends State<AudioPlayPage> {
  AudioPlayer _audioPlayer = AudioPlayer();
  AudioCache _audioCache = AudioCache(prefix: "audios/");
  bool _primeiraExecucao = true;

  double _volume = 0.5;

  _executar() async {
    _audioPlayer.setVolume(_volume);
    if (_primeiraExecucao) {
      _audioPlayer = await _audioCache.play("SoundHelix.mp3");
      _primeiraExecucao = false;
    } else {
      _audioPlayer.resume();
    }
  }

  _pausar() async {
    int resultado = await _audioPlayer.pause();
    if (resultado == 1) {}
  }

  _parar() async {
    int resultado = await _audioPlayer.stop();
    if (resultado == 1) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            child: Slider(
              onChanged: (novoVolume) {
                setState(() {
                  _volume = novoVolume;
                });
                _audioPlayer.setVolume(novoVolume);
              },
              value: _volume,
              divisions: 10,
              min: 0.0,
              max: 1.0,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    child: Image.asset("assets/images/executar.png"),
                    onTap: () {
                      _executar();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    child: Image.asset("assets/images/parar.png"),
                    onTap: () {
                      _parar();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    child: Image.asset("assets/images/pausar.png"),
                    onTap: () {
                      _pausar();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
