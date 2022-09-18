import 'package:aws_signature_v4/aws_signature_v4.dart';

class ConnectionConfig {
  final String host;
  final int port;
  final bool useSSL;
  final String awsRegion;
  final AWSCredentialsProvider? awsCredentialsProvider;
  const ConnectionConfig({
    this.useSSL = false,
    this.host = 'localhost',
    this.port = 9200,
    this.awsRegion = '',
    this.awsCredentialsProvider,
  });

  factory ConnectionConfig.aws(
    String domainHost, {
    String region = 'us-east-1',
    AWSCredentialsProvider? credentialsProvider,
    bool useSSL = true,
  }) =>
      ConnectionConfig(
        useSSL: useSSL,
        host: domainHost,
        awsRegion: region,
        awsCredentialsProvider: credentialsProvider,
      );

  // TODO: Verify how a vpc domain changes vs non-vpc in AWS to provide improved support
  // AWS Signer path has /, where as non aws doesn't
  String get fullEndpoint =>
      'http${useSSL ? 's' : ''}://$host:${useSSL ? 443 : port}${awsRegion.isNotEmpty ? '' : '/'}';
}
