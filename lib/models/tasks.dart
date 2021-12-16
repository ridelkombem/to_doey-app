class Task {
  //  this describes how the task will be constructed
  String name;
  bool isDone;
  Task({
    required this.name,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
    // the =! changes the isDone property to the opposite of what is
  }
}
