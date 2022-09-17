enum IndexCodec { Default, Best_Compression }

enum ShardCheckOptions { Checksum, True, False }

extension stringer on Enum {
  String lowercase() {
    return name.toLowerCase();
  }
}

enum RoutingAllocationOption { none, all, primaries, new_primaries }

enum RoutingReBalanceOption { all, primaries, replicas, none }
