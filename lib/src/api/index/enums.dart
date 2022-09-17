enum IndexCodec { Default, Best_Compression }

enum ShardCheckOptions { Checksum, True, False }

extension stringer on Enum {
  String lowercase() {
    return name.toLowerCase();
  }
}

enum RoutingAllocationOption { none, all, primaries, new_primaries }

enum RoutingReBalanceOption { all, primaries, replicas, none }

/// Expands wildcard expressions to different indices.
///
/// Available values are:
/// - [all] (match all indices)
/// - [open] (match open indices)
/// - [closed] (match closed indices)
/// - [hidden] (match hidden indices)
/// - [none] (do not accept wildcard expressions), which must be used with
///     [open], [closed], or both.
enum ExpandWildCardOption { all, open, closed, hidden, none }
