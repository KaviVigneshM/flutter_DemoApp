import 'package:flutter/material.dart';

import 'Promo.dart';
import '../resources/string.dart';

class Roaming extends StatelessWidget {
  final String roamingPromo = string.roamPromo;
  final String roamingSakto = string.roamsakto;
  final String roamingPlanning = string.roamPlan;
  final String roamingRoam = string.roamRoaming;
  final String roamingExplore = string.roamExplore;
  final String roamingImage = 'assets/images/roaming_bg.png';
  @override
  Widget build(BuildContext context) {
    return Promo(roamingPromo, roamingSakto, roamingPlanning, roamingRoam,
        roamingExplore, roamingImage);
  }
}
