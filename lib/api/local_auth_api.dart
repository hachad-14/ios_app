// ignore_for_file: deprecated_member_use

import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException {
      return false;
    }
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException {
      return <BiometricType>[];
    }
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;

    try {
      return await _auth.authenticateWithBiometrics(
        localizedReason: 'Scan Fingerprint to Authenticate',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException {
      return false;
    }
  }
}