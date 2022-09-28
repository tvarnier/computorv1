# COMPUTORV1 [[Sujet](https://github.com/tvarnier/computorv1/blob/master/subject.pdf)]

<br>

Le but de ce sujet est de coder un programme qui résout des équations simples. Le programme prend en paramètre une équation polynomiale. C’est-à-dire ne faisant intervenir que des puissances, aucune fonction compliquée. Le programme affiche sa (ses) solution(s).

<br>

## LANCER LE PROJET

<br>

Lancer la commande `make` pour compiler le projet.

Il suffit ensuite de lancer commande `./computor [-v] <equation>`

 * L'option `-v` permet d'afficher les étapes intermédiaires

<br>

## EXEMPLES D'UTILISATION

<br>

```
❯ ./computor "5 * X^0 + 4 * X^1 - 9.3 * X^2 = 1 * X^0"
Reduced form: -9.3X^2 + 4X + 4 = 0
Polynomial degree: 2
Discriminant is strictly positive, the solutions are:
 X₁ = 0.905239
 X₂ = -0.475131

 ❯ ./computor "5 * X^0 + 4 * X^1 - 9.3 * X^2 = 1 * X^0"
Reduced form: -9.3X^2 + 4X + 4 = 0
Polynomial degree: 2
Discriminant is strictly positive, the solutions are:
 X₁ = 0.905239
 X₂ = -0.475131

 ❯ ./computor "5 * X^0 + 4 * X^1 = 4 * X^0"
Reduced form: 4X + 1 = 0
Polynomial degree: 1
The Solution is:
 X = -0.25

 ❯ ./computor "8 * X^0 - 6 * X^1 + 0 * X^2 - 5.6 * X^3 = 3 * X^0"
Reduced form: -5.6X^3 - 6X + 5 = 0
Polynomial degree: 3
The polynomial degree is stricly greater than 2, I can't solve.
```
<p align="center" font-size="x-small"><i>Exemples</i></p>

<br>

```
 ❯ ./computor -v "4.5x^2 - 3x - 1.5 = 0"
Reduced form: 4.5x^2 - 3x - 1.5 = 0
Polynomial degree: 2
 ax² + bx + c = 0
 Δ = b² - 4ac
 Δ = -3² - 4 * 4.5 * -1.5
 Δ = 36
Discriminant is strictly positive, the solutions are:
 x₁ = (-b - √Δ) / 2a = (3 - √36) / 2 * 4.5 = -1 / 3
 x₂ = (-b + √Δ) / 2a = (3 + √36) / 2 * 4.5 = 1
```
<p align="center" font-size="x-small"><i>Résultat du programme avec l'option '-v'</i></p>