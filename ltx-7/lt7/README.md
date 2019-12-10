# lt7

## attention
時間の都合上，変数スコープの概念は持たない設計になっています．

## primitives

format | type
--- | ---
`[0-9]+*` | int
`#true`\|`#false` | bool
other | str

## functions

name |first appearance | example
--- | --- | ---
`+` | level 08 | `(+ 3 4)` -> `7`
`-` | level 08 | `(- 8 5)` -> `3`
`define` | level 09 | `(define x 3)` (x = 3)
`lambda` | level 13 | `(lambda (varg) expr)` -> `<lambda-function>`
`eq?` | level 14 | `(eq? 0 0)` -> `True`
`if` | level 15 | `(if condition true_value false_value)`
`quote` | level 16 | `(quote (0 1 2))` -> `(0 1 2)`
`car` | level 17-1 | `(car x)` -> `x[0]`
`cdr` | level 17-2 | `(cdr x)` -> `x[1:]`
`cons` | level 17-3 | `(cons new x)` -> `(new x[0] x[1] ..)`


## level

level | description
--- | ---
level 01 | あいさつ
level 02 | プロンプトとループ
level 03 | トークナイザ
level 04 | パーサ(1) 
level 05 | パーサ(2) 
level 06 | パーサ(完成版) 
level 07 | 評価器(evaluate 関数)
level 08 | 加減算
level 09 | 変数定義
level 10 | 変数の参照
level 11 | 数字はそのまま評価
level 12 | 定義済み関数呼び出し
level 13 | 関数定義 (add1 実装)
level 14 | 比較 (zero? 実装)
level 15 | 分岐 (not 実装)
level 16 | quote と list (null?, length 実装)
level 17 | リスト操作 (reverse 実装)


## sample code

### arithmetic operation
```lisp
(+ 3 4)  ;-> 7

(define x 42)
(define y 31)
(- x y)  ;-> 11
```

### add1
```lisp
(define add1
  (lambda (x)
    (+ x 1)))


(add1 9)  ;-> 10

(define x 41)
(add1 x)  ;-> 42
```

### zero?
```lisp
(define zero?
  (lambda (x)
    (eq? x 0)))


(zero? 3)  ;-> False

(define x 0)
(zero? x)  ;-> True
```

### not
```lisp
(define not
  (lambda (x)
    (if x #false
          #true)))


(not (eq? 0 0))  ;-> False

(define x (eq? 0 1))
(not x)  ;-> True
```

### null?
```lisp
(define null?
  (lambda (x)
    (eq? x (quote ()))))


(null? (quote (1 2 3)))  ;-> False

(define empty-list (quote ()))
(null? empty-list)  ;-> True
```

### length
```lisp
(define length
  (lambda (x)
    (if (null? x) 
      0
      (add1 (length (cdr x))))))


(length (quote ()))  ;-> 0

(define lst (quote (0 1 2 3 4 5 6 7 8 9)))
(length lst)  ;-> 10
```

### reverse
```lisp
(define reverse
  (lambda (x)
    (define reverse-aux
      (lambda (x result)
        (if (null? x)
          result
          (reverse-aux (cdr x) (cons (car x) result)))))
    (reverse-aux x (quote ()))))


(reverse (quote ()))  ;-> ()

(define lst (quote (0 1 2 3 4 5 6 7 8 9)))
(reverse lst)  ;-> (9 8 7 6 5 4 3 2 1 0)
```
