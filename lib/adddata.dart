import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class crudMethods {
  Future<void> addData(donorData) async {
    Firestore.instance.collection('donor').add(donorData).catchError((e) {
      print(e);
    });
  }
}

class victimMethods {
  Future<void> addData(donorData) async {
    Firestore.instance.collection('victim').add(donorData).catchError((e) {
      print(e);
    });
  }
}

class MapMethods {
  Future<void> addData(MapData) async {
    Firestore.instance.collection('location').add(MapData).catchError((e) {
      print(e);
    });
  }
}
