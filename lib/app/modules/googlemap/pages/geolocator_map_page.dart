import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeolocatorMapPage extends StatefulWidget {
  final String title;
  const GeolocatorMapPage({Key key, this.title = "GeolocatorMap"})
      : super(key: key);

  @override
  _GeolocatorMapPageState createState() => _GeolocatorMapPageState();
}

class _GeolocatorMapPageState extends State<GeolocatorMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _posicaoCamera =
      CameraPosition(target: LatLng(-23.565160, -46.651797), zoom: 19);

  Set<Marker> _marcadores = {};

  _onMapCreated(GoogleMapController googleMapController) {
    _controller.complete(googleMapController);
  }

  _movimentarCamera() async {
    GoogleMapController googleMapController = await _controller.future;
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(_posicaoCamera));
  }

  _recuperarLocalizacaoAtual() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _posicaoCamera = CameraPosition(
          target: LatLng(position.latitude, position.longitude), zoom: 17);
      _movimentarCamera();
    });

    //-23.565327, -46.650585

    //print("localizacao atual: " + position.toString() );
  }

  _adicionarListenerLocalizacao() {
    var geolocator = Geolocator();
    var locationOptions =
        LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);
    geolocator.getPositionStream(locationOptions).listen((Position position) {
      print("localizacao atual: " + position.toString());

      /* Marker marcadorUsuario = Marker(
            markerId: MarkerId("marcador-usuario"),
            position: LatLng(position.latitude, position.longitude),
            infoWindow: InfoWindow(
                title: "Meu local"
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueMagenta
            ),
            onTap: (){
              print("Meu local clicado!!");
            }
          //rotation: 45
        ); */

      setState(() {
        //-23.566989, -46.649598
        //-23.568395, -46.648353
        //_marcadores.add( marcadorUsuario );
        _posicaoCamera = CameraPosition(
            target: LatLng(position.latitude, position.longitude), zoom: 17);
        _movimentarCamera();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _recuperarLocalizacaoAtual();
    _adicionarListenerLocalizacao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.done), onPressed: _movimentarCamera),
      body: Container(
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _posicaoCamera,
          onMapCreated: _onMapCreated,
          myLocationEnabled: true,
          markers: _marcadores,
        ),
      ),
    );
  }
}
