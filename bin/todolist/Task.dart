class Task {
  String title;
  String? description;
  bool status = false;

  Task(this.title, this.description, this.status);

  Task.requi(
      {required this.title, required this.description, required bool status}) {
    this.status = false;
  }

  get getTitle => this.title;

  set setTitle(title) => this.title = title;

  get getDescription => this.description;

  set setDescription(description) => this.description = description;

  get getStatus => this.status;

  set setStatus(status) => this.status = status;

  @override
  String toString() {
    return 'Title: $title\nDescription: $description\nStatus: ${status ? 'Done' : 'Pending'}';
  }
}
