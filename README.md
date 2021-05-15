# EA 05 - Julia Exercise
### Data Science SS 21
### Christian Kitte 

Für die Aufgaben mit Julia arbeite ich mit der PyCharm IDE von Jetbrains und einem entsprechenden Plugin für die Verwendung von Julia. Je Aufgabe existiert eine Funktion mit entsprechenden Namen. 

### Create a 2x4 two dimensional matrix with random floats in it and in the next step determine the biggest element.

Für die Aufgabe habe ich aus Gründen der Übersicht Float 16 verwendet. Der größte Werte des Arrays ist bei meinem hier notierten Durchlauf 0,8477. Der Wert befindet sich in der Zweiten Reihe in Spalte 1. Da immer erst die Reihe, dann die Spalte genannt wird, ergibt sich (2,1).

### Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!

Das erste und zweite Ergebnis verdeutlichen, dass die Operation die Matrizen als ganzes multipliziert (Matrizenmultiplikation). Hierfür muss jedoch die Spaltenzahl der ersten Matrix gleich der Anzahl der Reihen der zweiten sein. Folglich gibt die erste Aktion eine Fehlermeldung und die zweite den neuen 2x3 Vektor zurück.

Die Operation A .* B im zweiten Teil der Aufgabe multipliziert die Elemente der Matrix Elementweise. Das Ergebnis zeigt, dass der Zusatz “.” angibt, dass ich Elementweise vorgehen möchte. Dies ist erlaubt, da ich Matrizen faktorisieren kann. Das Ergebnis ist dementsprechend eine 2x3 Matrix.

### What about matrix division with "/" or "\"?!

In dem ersten Teil der Aufgabe führt die Operation A / B zu einem merkwürdigen Verhalten und einer 2x3 Matrix. Mit Blick auf die Aufgabe 2) würde ich denken, dass versucht wird, die Operation - verbotener Weise - auf die Matrizen als solche anzuwenden. 

Die Operation A ./ B hat jedoch zur Folge, dass die Elemente von A mit den entsprechenden Elementen von B dividiert werden. Dies führt entsprechend wieder zu einer 2x3 Matrix.

Der zweite Teil der Aufgabe verhält sich analog zum ersten Teil, jedoch umgekehrt. Die Elemente von B werden durch die Entsprechenden Gegenstücke in Matrix A dividiert.

Das Ergebnis zeigt wieder, dass der Zusatz “.” angibt, dass ich Elementweise vorgehen möchte. Die Division einer Matrix durch eine andere Matrix als ganzes ist jedoch nicht definiert. Lediglich +, - und  sind definiert. Hier stellt sich aber die Frage, warum kein Fehler geworfen wird.

Interessant ist, dass der Ausgabevektor nunmehr Float Werte enthält, wohingegen der Eingabevektor nur Int Werte enthielt. hier zeigt sich die dynamische Typisierung von Julia.Interessant ist, dass der Ausgabevektor nunmehr Float Werte enthält, wohingegen der Eingabevektor nur Int Werte enthielt. hier zeigt sich die dynamische Typisierung von Julia.

### Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.

Die Ausgabe des Programms zeigt, dass weder eine Matrix mit einer Zahl addiert noch subtrahiert werden kann. Diese Operation ist nicht definiert. Es werden auch nicht, wie vielleicht erwartet, die einzelnen Elemente mit dieser Zahl addiert oder subtrahiert.

Bei der Multiplikation und Division zeigt sich jedoch ein anderes Verhalten. Hier erfolgt die mathematische Operation auf jeden einzelnen Element. Dies Verhalten ist jedoch letztlich nachvollziehbar, da ich wie hier beispielhaft gezeigt, eine Matrix faktorisieren kann respektive eine Skalarmultiplikation definiert ist.

### Now multiply a 3x4 matrix with a suitable (4)vector.

Bei dieser Aufgabe existieren eigentlich zwei grundlegende Möglichkeiten. Bei basieren auf die Notwendigkeit, das die Anzahl der Spalten gleich der Anzahl der Reihen sein muss.

Je nachdem, ob ich mit einem Spalten- oder Zeilenvektor arbeite, ergeben sich zwei Möglichkeiten, einen geeigneten Vektor zu definieren. Mein Vektor B ist ein Zeilenvektor, C hingegen ein Spaltenvektor. Der Unterschied zeigt sich in der Bebilderung am Ende der Aufgabe 5 sowie der Definition in Julia.


