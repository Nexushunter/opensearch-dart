class ConnectionConfig {
  final String endpoint;
  final bool useSSL;
  const ConnectionConfig({
    this.useSSL = false,
    this.endpoint = 'localhost:9200',
  });
}
