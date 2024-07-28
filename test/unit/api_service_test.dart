import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/service/api_service.dart';
import 'api_service_test.mocks.dart';


@GenerateMocks([http.Client])
void main() {
  group('ApiService', () {
    const baseUrl = 'https://api.example.com/';
    const endpoint = 'data';
    final mockClient = MockClient();
    final apiService = ApiService(baseUrl);

    test('returns data if the http call completes successfully', () async {
      when(mockClient.get(Uri.parse('$baseUrl$endpoint')))
          .thenAnswer((_) async => http.Response('{"title": "Test"}', 200));

      expect(await apiService.fetchData(endpoint), {'title': 'Test'});
    });

    test('throws an exception if the http call completes with an error', () {
      when(mockClient.get(Uri.parse('$baseUrl$endpoint')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(apiService.fetchData(endpoint), throwsException);
    });
  });
}
