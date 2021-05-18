#=
MatrixExcercises:
- Julia version: 1.6.1
- Author: Christian Kitte
- Date: 2021-05-13
=#

# https://juliadocs.github.io/Julia-Cheat-Sheet/
# https://github.com/JuliaLangGerman/Julia_Handbuch_Deutsch
# https://docs.julialang.org/en/v1/
# https://docs.julialang.org/en/v1/manual/style-guide/
#
# m x n Matrix ==> m Zeilen und n Spalten

# Lösung der ersten Aufgabe
function Aufgabe1()
    # 16, damit die Zahlen nicht so lang werden....
    # 2x4 ==> 2 Zeilen, 4 Spalten
    myArray = rand(Float16, 2, 4)
    myArrayMax = findmax(myArray)

    println(string("Matrix: ",myArray))
    println("Das größte Element ist: $myArrayMax")

    # Anzege von Variablen $ scheint hier nicht vernünftig zu arbeiten :(
    print("Der Wert ist: ")
    println(myArrayMax[1])

    print("Der Wert befindet sich an: ")
    println(myArrayMax[2])

    print("Dimension 1: ")
    println(myArrayMax[2][1])

    print("Dimension 2: ")
    println(myArrayMax[2][2])
end

# Lösung der zweiten Aufgabe
function Aufgabe2()
    matrixA = [1 2 3; 4 5 6]
    matrixB = [7 8 9; 10 11 12]
    matrixC = [7 8 9; 10 11 12; 13 14 15]

    # Eine etwas gewöhnungsbedürftige Syntax
    firstWayA = try
        # zwei 2x3 Matrizen
        matrixA*matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    firstWayB = try
        # 2x3 Matrix und eine 3x3 Matrix
        matrixA*matrixC
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    secondWay = try
        matrixA.*matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    println(string("Matrix A: ",matrixA))
    println(string("Matrix B: ",matrixB))
    println(string("Matrix C: ",matrixC))
    println(string("A * B: ",firstWayA))
    println(string("A * C: ",firstWayB))
    println(string("A .* B: ",secondWay))
end

# Lösung der dritten Aufgabe Teil 1
function Aufgabe3a()
    matrixA = [1 2 3; 4 5 6]
    matrixB = [7 8 9; 10 11 12]

    firstWay = try
        matrixA / matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    secondWay = try
        matrixA./matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    println(string("Matrix A: ",matrixA))
    println(string("Matrix B: ",matrixB))
    println(string("A / B: ",firstWay))
    println(string("A ./ B: ",secondWay))
end

# Lösung der dritten Aufgabe Teil 2
function Aufgabe3b()
    matrixA = [1 2 3; 4 5 6]
    matrixB = [7 8 9; 10 11 12]

    firstWay = try
        matrixA \ matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    secondWay = try
        matrixA.\matrixB
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    println(string("Matrix A: ",matrixA))
    println(string("Matrix B: ",matrixB))
    println(string("A \\ B: ",firstWay))
    println(string("A .\\ B: ",secondWay))
end

# Lösung der vierten Aufgabe
function Aufgabe4()
    matrixA = [1 2 3; 4 5 6; 7 8 9]

    firstTask = try
        matrixA + 1
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    secondTask = try
        matrixA - 1
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    thirdTask = try
        matrixA * 2
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    fourthTask = try
        matrixA / 2
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    println(string("Matrix A: ",matrixA))
    println(string("A + 1: ",firstTask))
    println(string("A - 1: ",secondTask))

    println(string("A * 2: ",thirdTask))
    println(string("A / 2: ",fourthTask))
end

# Lösung der fünften Aufgabe
function Aufgabe5()
    # 3 mal 4 Matrix ==> 3 Zeilen, 4 Spalten
    matrixA = [1 2 3 4 ; 5 6 7 8 ; 9 10 11 12]
    zeilenVectorB = [10 20 30]
    spaltenVectorC = [10; 20; 30; 40]

    firstWay = try
        zeilenVectorB*matrixA
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    secondWay = try
        matrixA*spaltenVectorC
    catch fehler
        string("Es kam zu einem Fehler: ",fehler)
    end

    println(string("Matrix A: ",matrixA))
    println(string("Vector B: ",vectorB))
    println(string("Vector C: ",vectorC))
    println(string("Vector C * Matrix A: ",firstWay))
    println(string("Matrix A * Vector C: ",secondWay))
end

#Aufgabe1()
#Aufgabe2()
#Aufgabe3a()
#println()
#Aufgabe3b()
#Aufgabe4()
Aufgabe5()
