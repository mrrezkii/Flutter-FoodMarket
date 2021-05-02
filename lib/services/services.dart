import 'dart:convert';
import 'dart:io';

import 'package:bwa_foodmarket/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'user_services.dart';
part 'food_services.dart';
part 'transaction_services.dart';
part 'secure_storage.dart';

String baseURL = 'http://foodmarket-backend.buildwithangga.id/api/';
