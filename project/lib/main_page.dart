import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project/bloc/auth_bloc.dart';
import 'package:project/reservation_detail.dart';

void main() => runApp(MainPage());

class CustomInfoWindow extends StatelessWidget {
  final String title;
  final String snippet;

  const CustomInfoWindow({
    required this.title,
    required this.snippet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(snippet),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              // Acción del botón
              print('Botón presionado');
            },
            child: Text('Presionar'),
          ),
        ],
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(20.605141814641044, -103.41436049669026);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Set<Marker> markers = Set();

  @override
  void initState() {
    super.initState();

    BitmapDescriptor customMarker = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue);
    // Agrega un marcador con una ventana de información personalizada
    markers.add(
      Marker(
        markerId: MarkerId('custom_info_window_marker'),
        position: LatLng(20.605141814641044, -103.41436049669026),
        icon: customMarker,
        infoWindow: InfoWindow(
          // Usa el widget personalizado como contenido de la ventana de información
          title: 'WS - 093',
          snippet: 'Presiona para reservar',
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ReservationDetail()));
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map'),
          backgroundColor: Colors.green[700],
          actions: [
            IconButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add((SignOutEvent()));
              },
              icon: Icon(Icons.exit_to_app),
              tooltip: "Settings",
            )
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          markers: markers,
        ),
      ),
    );
  }
}
