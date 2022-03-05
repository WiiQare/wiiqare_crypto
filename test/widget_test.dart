

import 'package:wiiqare_crypto/service/address_service.dart';
import 'package:flutter_test/flutter_test.dart';

import 'configuration_service_mock.dart';

void main() {
  test('should return private key from mnemonic', () async {
    final config = ConfigServiceMock();
    final addressService = AddressService(config);

    final privateKey = await addressService.getPrivateKey(
        'loan absorb orange crouch mixed position sweet law ghost habit upgrade toss');
    expect(privateKey,
        '02e41a913e0d109672c9122c96f0715ef62746aabe186a8160bca314acaa3178');
  });
}
