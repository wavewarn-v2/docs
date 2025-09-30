import 'package:flutter/material.dart';
import 'services/api_client.dart';

void main() => runApp(const WaveWarnApp());

class WaveWarnApp extends StatelessWidget {
  const WaveWarnApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wave Warn V2',
      home: const HomeScreen(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final api = ApiClient(const String.fromEnvironment('API_BASE_URL', defaultValue: 'http://10.0.2.2:8000'));
  Map<String, dynamic>? risk;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final data = await api.getLiveRisk(12.97, 77.59); // Bengaluru coords (example)
    setState(() => risk = data);
  }

  @override
  Widget build(BuildContext context) {
    final score = risk?['score']?.toString() ?? '--';
    return Scaffold(
      appBar: AppBar(title: const Text('Wave Warn')),
      body: Center(
        child: Text('Risk score: $score', style: const TextStyle(fontSize: 28)),
      ),
    );
  }
}
