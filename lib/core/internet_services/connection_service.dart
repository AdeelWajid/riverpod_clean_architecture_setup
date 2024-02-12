import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectionServiceProvider = Provider<ConnectionService>((ref) => ConnectionService());

class ConnectionService {
  final Connectivity _connectivity = Connectivity();
  Stream<ConnectivityResult> get connectivityStream => _connectivity.onConnectivityChanged;
}