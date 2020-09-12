# app_1

11 set - MyTheme file and DebugBanner false <br>

## Observations

## DART
1. print (1 + 2); <br> 
print('hello ${i+1}') <br>
2. class Person { } <br>
var p1 = Person(); <br>
Person({String name, int age}) // named constructor <br>
var p1 = Person('joshn', 30); <br>
Person(String name, int age) // positional constructor <br>
can have @required or default value age=30  <br>
Person({this.name, this.age = 30}) // short cut for constructor <br>
var p1 = Person(name:'joshn', age:30); <br>
3. () => print('Anonymus function'); <br>
onPressed: answerQuestion(), // pass a function <br>
onPressed: answerQuestion,  // pass a pointer to the function <br>
4. Statefull widget -> just work with a setState function <br>
setState contains qhat trigger the rebuild in this case, the index of the list <br>
5. Input data (External Data) -> receive via constructor   <br>
Internal data ->  receive from an user of the app <br>


### Tips from the Teacher
name of the project flutter_project <br>
name of function addNumbers <br>
By convention, use just one widget per file <br>

flutter run OR run without degugging <br>



