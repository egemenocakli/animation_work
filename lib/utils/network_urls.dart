import 'network_config.dart';

class NetworkUrls {
  final _baseUrl = NetworkConfig().baseUrl;

  //Controller
  final String _therapyCentersGuidIdController = "TherapyCenters/";
  final String _signUpController = "Login/";

  //URL
  final String _loginUrl = "Login";
  final String _therapyCentersGuidId = "GetByGuid/";
  final String _signUp = "SignUp";
  final String _countries = "Countries";


  //ENDPoint
  String get loginUrl => _baseUrl + _loginUrl;
  String get therapyCentersGuidIdUrl => _baseUrl + _therapyCentersGuidIdController +_therapyCentersGuidId;
  String get signUpUrl => _baseUrl + _signUpController +_signUp;
  String get countriesUrl => _baseUrl + _countries;
}
