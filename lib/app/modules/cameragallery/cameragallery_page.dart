import 'dart:io';
import 'package:biblioteca_framework_flutter_github_io/app/components/custom_botton_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameragalleryPage extends StatefulWidget {
  final String title;
  const CameragalleryPage({Key key, this.title = "CameraGallery"})
      : super(key: key);

  @override
  _CameragalleryPageState createState() => _CameragalleryPageState();
}

class _CameragalleryPageState extends State<CameragalleryPage> {
  File _imagem;

  Future _recuperarImagem(bool daCamera) async {
    File imagemSelecionada;
    if (daCamera == true) {
      imagemSelecionada =
          await ImagePicker.pickImage(source: ImageSource.camera);
    } else if (daCamera == false) {
      imagemSelecionada =
          await ImagePicker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      _imagem = imagemSelecionada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: 'Camera',
              onPressed: () {
                _recuperarImagem(true);
              },
            ),
            CustomBotton(
              title: 'Gallery',
              onPressed: () {
                _recuperarImagem(false);
              },
            ),
            _imagem == null ? Container() : Image.file(_imagem)
          ],
        ),
      ),
    );
  }
}
