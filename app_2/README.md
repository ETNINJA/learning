# app_2
Expense Planner <br>



## Observations
1. a Card takes the size of its child unless the size parent is define.
2. the best way to control size is with Container
width: MediaQuery.of(context).size.width * 0.9,
width: double.infinity,
3. Column(
            children: transactions
                .map((tx) => Card( )).toList(),          
        )
4. 


## DART



### Tips from the Teacher
Container, Row and Colunm, are important layout widgets <br>
Flexible and Expanded <br>
Stack, Card <br>
ListView, GridView, <br>
ListTile, <br>
GestureDetector, InkWell, <br> 

