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
2. Person.veryOld(this.name){ age = 60} <br>
var p1 = Person.veryOld( name: 'Max') <br>

3. () => print('Anonymus function'); <br>
onPressed: answerQuestion(), // pass a function <br>
onPressed: answerQuestion,  // pass a pointer to the function <br>
4. Statefull widget -> just work with a setState function <br>
setState contains what trigger the rebuild in this case, the index of the list <br>
Statefull is re-rendered when input data or local stat4e changes <br>
5. Input data (External Data) -> receive via constructor   <br>
Internal data ->  receive from an user of the app <br>
6. Stateless class wil use FINAL before its atributes <br>
FINAL ->  <br>
CONST ->  <br>
7. to see the code of a widget, hold Crtl and hoover over the object, than click to inspect. <br>
### Callback Functions
8. in the constructor of Answer class, without paranteses -> a pointer <br> 
9. the spread ... avoid nested list, take out all individual elements and place it separetly.
10. use constructor to pass data around.
11. getter is a diferent fuction 
String get resultPhrase{
    return ....
}


### Tips from the Teacher
check Widget CATALOG <br>
name of the project flutter_project <br>
name of function addNumbers <br>
By convention, use just one widget per file <br>

flutter run OR run without degugging <br>



