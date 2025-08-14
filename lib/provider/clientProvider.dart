import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registrov1/api/core/api_client.dart';


final clientProvider = Provider<ApiClient>((ref) {
    return ApiClient();
});