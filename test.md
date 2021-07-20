# markdown test page
### Hello World

this is a my first code.

* print abc.

    読めたかな？

```math
\begin{align}
f(x) &= \frac{1}{1 + e^-x} \\
f'(x) &= \frac{\partial L}{\partial X}y(1 - y)
\end{align}
```

~~~
print('abc')
~~~

```python
def hoge(x):
  return x ** 2
```

```eval_rst
.. graphviz::

  digraph foo {
    charset="UTF-8"
    graph [class="cats"];

    subgraph cluster_big {
      graph [class="big_cats"];

      "Lion" [class="yellow cocial"];
      "Snow Leopard" [class="white solitary"];
    }
  }
.. graphviz::

  digraph Flatland {
    a -> b -> c -> d;
    a [shape="polygon", sides=4];
    b [shape="polygon", sides=5];
    c [shape="triangle" style="filled" color="green"];
    d [peripheries=3,color=yellow];
  }
.. graphviz::

  digraph G {
   a -> {b , c};
   {b,c} -> d -> a;
   b -> c[dir="both", color="blue"];
   a [bgcolor="yellow", label="A"];
   b [color="red"];
  }

.. graphviz::

  digraph G {
    /* some comments. */
    label = "math graph";
    rankdir = "LR";
    node [shape = "circle"];
    1 -> 2 [label = "-x"];
    2 -> 3 [label = "f1"];
    3 -> 4 [label = "f2"];
    4 -> 5 [label = "f3"];
    1 [label = "*"];
    2 [label = "exp"];
    3 [label = "+"];
    4 [label = "/"];
    5 [shape = "none", label = ""];
    x -> 1 [label = "x"];
    x [shape = "none", label = ""];
    m1 -> 1 [label = "-1"];
    m1 [shape = "none", label = ""];
    p1 -> 3 [label = "1"];
    p1 [shape = "none", label = ""];
    5 -> 4 [color = "red", label = "b1", fontcolor = "red"];
    4 -> 3 [color = "red", label = "b2", fontcolor = "red"];
    3 -> 2 [color = "red", label = "b3", fontcolor = "red"];
    2 -> 1 [color = "red", label = "b4", fontcolor = "red"];
    1 -> x [color = "red", label = "b5", fontcolor = "red"];
  }
```
```math
\begin{align}
e^{-x} \tag{f1} \\\\
1+e^{-x} \tag{f2} \\\\
y = \frac{1}{1+e^{-x}} \tag{f3} \\\\
\frac{\partial L}{\partial y} \tag{b1} \\\\
-\frac{\partial L}{\partial y} y^2 \tag{b2,b3} \\\\
-\frac{\partial L}{\partial y} y^2 e^{-x} \tag{b4} \\\\
\frac{\partial L}{\partial y} y^2 e^{-x} \tag{b5} \\\\
\end{align}
```

```eval_rst
.. blockdiag::
   :desctable:

   blockdiag {
      A -> B -> C;
      A [description = "browsers in each client"];
      B [description = "web server"];
      C [description = "database server"];
   }
```

```eval_rst
.. nwdiag::
   :desctable:

   nwdiag {
      inet [shape = 'cloud', description = "Internet"];
      inet -- router;
      network layer1 {
        address = "192.168.x.x/24"
        router [address = .1, description = "router"];
        A [address = .2, description = "web server01"];
        B [address = .3, description = "web server02"];
      }
      network layer2 {
        address = "172.0.0.x/24"
        A [address = .1];
        C [address = .2, description = "database server"];
      }
   } 

```

```eval_rst
.. uml::

  @startuml
  user -> (use PlantUML)
  note left of user
    Hello!
  end note
  @enduml

.. uml::

   @startuml
   actor "Main Database" as DB << Application >>
   
   note left of DB
      This actor 
      has a "name with spaces",
      an alias
      and a stereotype 
   end note
   
   actor User << Human >>
   actor SpecialisedUser
   actor Administrator
   
   User <|--- SpecialisedUser
   User <|--- Administrator
   
   usecase (Use the application) as (Use) << Main >>
   usecase (Configure the application) as (Config)
   Use ..> Config : <<includes>>
   
   User --> Use
   DB --> Use
   
   Administrator --> Config 
   
   note "This note applies to\nboth actors." as MyNote
   MyNote .. Administrator
   MyNote .. SpecialisedUser
   
   '  this is a text comment and won't be displayed
   AnotherActor ---> (AnotherUseCase)
   
   '  to increase the length of the edges, just add extras dashes, like this:
   ThirdActor ----> (LowerCase)
   
   '  The direction of the edge can also be reversed, like this:
   (UpperCase) <---- FourthActor
   
   @enduml

.. uml::

      @startuml
      
      'style options 
      skinparam monochrome true
      skinparam circledCharacterRadius 0
      skinparam circledCharacterFontSize 0
      skinparam classAttributeIconSize 0
      hide empty members
      
      Class01 <|-- Class02
      Class03 *-- Class04
      Class05 o-- Class06
      Class07 .. Class08
      Class09 -- Class10
      
      @enduml

.. uml::
   
      @startuml
      actor Alice #red
      participant Bob
      note left of Alice #aqua
        hello!!
      end note
      note over Alice
        Do you know me?
      end note
      Alice -> Bob: Autentication Request
      Bob --> Alice: Authentication Response
      note right of Bob
        Yes.
      end note
      group 2nd request [2nd request]
        Alice -> Bob: Another Authentication Request
        Alice <-- Bob: another authentication Response
      end
      note over Alice, Bob
        bye.
      end note
      
      @enduml

.. uml::

   @startuml
   
   start
   
   :first activity;
   
   :second activity
    with a multiline 
    and rather long description;
   
   :another activity;
   
   note right
     After this activity,
     are two 'if-then-else' examples. 
   end note
   
   if (do optional activity?) then (yes)
      :optional activity;
   else (no)
   
      if (want to exit?) then (right now!)
         stop
      else (not really)
      
      endif
   
   endif   
      
   :third activity;
   
   note left
     After this activity,
     parallel activities will occur. 
   end note
   
   fork
      :Concurrent activity A;
   fork again
      :Concurrent activity B1;
      :Concurrent activity B2;
   fork again
      :Concurrent activity C;
      fork
      :Nested C1;
      fork again
      :Nested C2;
      end fork
   end fork
   
   repeat 
      :repetitive activity;
   repeat while (again?)
   
   while (continue?) is (yes, of course)
     :first activity inside the while loop;
     :second activity inside the while loop;
   endwhile (no)
   
   stop
   
   @enduml

.. uml::

   @startuml
   
   [*] --> MyState
   MyState --> CompositeState
   MyState --> AnotherCompositeState
   MyState --> WrongState
   
   CompositeState --> CompositeState : \ this is a loop   
   AnotherCompositeState --> [*]
   CompositeState --> [*]
   
   MyState : this is a string
   MyState : this is another string
   
   state CompositeState {
   
   [*] --> StateA : begin something
   StateA --> StateB : from A to B
   StateB --> StateA : from B back to A
   StateB --> [*] : end it

   CompositeState : yet another string
   }

   state AnotherCompositeState {
   
   [*] --> ConcurrentStateA    
   ConcurrentStateA --> ConcurrentStateA 
   
   --
   
   [*] --> ConcurrentStateB
   ConcurrentStateB --> ConcurrentStateC
   ConcurrentStateC --> ConcurrentStateB
   }
      
   note left of WrongState
      This state 
      is a dead-end
      and shouldn't
      exist.
   end note
   
   @enduml
```

```eval_rst
.. diagrams::

  from sphinx_diagrams import SphinxDiagram
  from diagrams.aws.compute import EC2
  from diagrams.aws.database import RDS
  from diagrams.aws.network import ELB
  
  with SphinxDiagram(title="example"):
    ELB("lb") >> [EC2("worker1"),
                  EC2("worker2"),
                  EC2("worker3"),
                  EC2("worker4"),
                  EC2("worker5")] >> RDS("events")

```

