import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorFromAddress extends StatefulWidget {
  @override
  _GeolocatorFromAddressState createState() => _GeolocatorFromAddressState();
}

class _GeolocatorFromAddressState extends State<GeolocatorFromAddress> {
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
        title: Text("Mapas e geolocalização"),
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
