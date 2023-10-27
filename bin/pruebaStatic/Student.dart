class Student {
  String _name;



 String get name => this._name;



  set name(String newName) {
    _name= name;
  }


  Student(this._name);

  @override
  String toString() {
    return 'name: $_name';
  }
}
