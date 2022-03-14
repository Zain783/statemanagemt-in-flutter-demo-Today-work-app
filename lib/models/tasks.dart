class Tasks {
  final String name;
  bool isDone=false;
  Tasks({required this.name, required this.isDone});
  toggleDone() {
    isDone = !isDone;
  }
}
