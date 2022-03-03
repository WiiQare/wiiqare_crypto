import 'package:wiiqare_crypto/model/network_type.dart';
import 'package:wiiqare_crypto/utils/wallet_icons.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members

// Abhishek you have to change this, i put it for test.
class AppConfig {
  static Map<NetworkType, AppConfigParams> networks =
      <NetworkType, AppConfigParams>{
    NetworkType.Local: AppConfigParams(
      'http://192.168.40.197:8545',
      '0xD933a953f4786Eed5E58D234dFeadE15c96bAa8b',
      web3RdpUrl: 'ws://192.168.40.197:8545',
      symbol: 'ETH',
      faucetUrl: 'about:blank',
      enabled: false,
      label: 'Local (Truffle)',
    ),
    NetworkType.Ethereum: AppConfigParams(
      'https://ropsten.infura.io/v3/628074215a2449eb960b4fe9e95feb09',
      '0x5060b60cb8Bd1C94B7ADEF4134555CDa7B45c461',
      web3RdpUrl:
          'wss://ropsten.infura.io/ws/v3/628074215a2449eb960b4fe9e95feb09',
      symbol: 'ETH',
      faucetUrl: 'https://faucet.ropsten.be',
      enabled: true,
      icon: WalletIcons.ethereum,
      label: 'Ethereum (Ropsten)',
    ),
   
  };
}

class AppConfigParams {
  AppConfigParams(
    this.web3HttpUrl,
    this.contractAddress, {
    required this.symbol,
    required this.faucetUrl,
    required this.enabled,
    required this.label,
    this.web3RdpUrl,
    this.icon = WalletIcons.coins,
  });
  final String? web3RdpUrl;
  final String web3HttpUrl;
  final String contractAddress;
  final String symbol;
  final String faucetUrl;
  final IconData icon;
  final bool enabled;
  final String label;
}
