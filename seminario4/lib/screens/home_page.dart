import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seminario4/providers/ui_provider.dart';
import 'package:seminario4/screens/addresses_page.dart';
import 'package:seminario4/screens/maps_page.dart';
import 'package:seminario4/widgets/custom_navigatorbar.dart';
import 'package:seminario4/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 elevation: 0,
 title: Text('Historial'),
 actions: [
 IconButton(icon: Icon(Icons.delete_forever), onPressed: () {})
 ],
 ),
 body: _HomePageBody(),
 bottomNavigationBar: CustomNavigationBar(),
 floatingActionButton: ScanButton(),
 floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
 );
 }
}
class _HomePageBody extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 // Obtener el selected menu opt
 final uiProvider = Provider.of<UiProvider>(context);
 final currentIndex = uiProvider.selectedMenuOpt;
 switch (currentIndex) {
 case 0:
 return MapsPage();
 case 1:
 return AddressesPage();
 default:
 return MapsPage();
 }
 }
}