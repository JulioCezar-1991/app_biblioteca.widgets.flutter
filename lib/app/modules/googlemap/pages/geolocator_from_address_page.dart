import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeolocatorFromAddressPage extends StatefulWidget {
  final String title;
  const GeolocatorFromAddressPage(
      {Key key, this.title = "GeolocatorFromAddress"})
      : super(key: key);
  @override
  _GeolocatorFromAddressPageState createState() =>
      _GeolocatorFromAddressPageState();
}

class _GeolocatorFromAddressPageState extends State<GeolocatorFromAddressPage> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _posicaoCamera = CameraPosition(
    target: LatLng(-16.735571, -49.265306),
    zoom: 19,
  );

  Set<Marker> _marcadores = {};

  _onMapCreated(GoogleMapController googleMapController) {
    _controller.complete(googleMapController);
  }

/*   _recuperarLocalParaEndereco() async {
    List<Placemark> listaEnderecos =
        await Geolocator().placemarkFromAddress("Cidade Rio Verde");

    if (listaEnderecos != null && listaEnderecos.length > 0) {
      Placemark endereco = listaEnderecos[0];

      String resultado;

      resultado = "\n adinistrativeArea: " + endereco.administrativeArea;
      resultado += "\n subAdministrativeArea: " + endereco.subAdministrativeArea;
      resultado += "\n locality: " + endereco.locality;
      resultado += "\n subLocality " + endereco.subLocality;
      resultado += "\n thoroughfare " + endereco.thoroughfare;
      resultado += "\n subThoroughfare: " + endereco.subThoroughfare;
      resultado += "\n postalCode: " + endereco.postalCode;
      resultado += "\n country: " + endereco.country;
      resultado += "\n isoCountryCode: " + endereco.isoCountryCode;
      resultado += "\n position: " + endereco.position.toString();
      print("Resultado: " + resultado); 
    }
  } */

  _recuperarEnderecoParaLatLong() async {
    List<Placemark> listaEnderecos =
        await Geolocator().placemarkFromCoordinates(-16.770710, -49.274241);

    if (listaEnderecos != null && listaEnderecos.length > 0) {
      Placemark endereco = listaEnderecos[0];

      String resultado;

      resultado = "\n adinistrativeArea: " + endereco.administrativeArea;
      resultado +=
          "\n subAdministrativeArea: " + endereco.subAdministrativeArea;
      resultado += "\n locality: " + endereco.locality;
      resultado += "\n subLocality " + endereco.subLocality;
      resultado += "\n thoroughfare " + endereco.thoroughfare;
      resultado += "\n subThoroughfare: " + endereco.subThoroughfare;
      resultado += "\n postalCode: " + endereco.postalCode;
      resultado += "\n country: " + endereco.country;
      resultado += "\n isoCountryCode: " + endereco.isoCountryCode;
      resultado += "\n position: " + endereco.position.toString();

      print("Resultado: " + resultado);
    }
  }

  @override
  void initState() {
    super.initState();

    _recuperarEnderecoParaLatLong();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
