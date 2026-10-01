class ArgumentException extends FormatException {
  /// The command that was parser before discovering the error.
  /// 
  /// This will be empty if the error was on the root parser.
  final String? command;


  /// The name of the argument that was being parser when the error was
  /// discovered.
  final String? argumentName;


  ArgumentException(
    super.message, [
    this.command,
    this.argumentName,
    super.source,
    super.offset,
    ]);


    @override
    String toString(){
      return 'ArgumentException: $message';
    }
}