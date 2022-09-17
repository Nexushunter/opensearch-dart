class AutoExpandReplicaSetting {
  final int lowerLimit;
  // TODO: String or continue to use max int?
  final int upperLimit;
  final bool disabled;
  const AutoExpandReplicaSetting({
    this.lowerLimit = 0,
    this.upperLimit = 65536,
    this.disabled = true,
  }) : assert(upperLimit >= lowerLimit);
}
