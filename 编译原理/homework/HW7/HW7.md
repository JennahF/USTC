# HW7

## 4.6 b

E，T均有综合属性type和string。type表示E和T的类型，string保存式子的内容。

| 产生式         | 语法规则                                                     |
| -------------- | ------------------------------------------------------------ |
| E -> E1+T      | if(E1.type==int && T.type==int) E.type=int<br />else {E.type=real<br />if(E1.type==int) {E1.type=real E1.string=intoreal(E1.string)} <br />if(T.type==int) {T.type=real T.string=intoreal(T.string)}}<br /><br />E.string=connect(E1.string, T.string, "+")<br />print(T.string)<br />printf("+") |
| E -> T         | E.type=T.type<br />E.string=T.string<br />printf(E.string)   |
| T -> num1.num2 | T.type=real<br />T.string=connect(str(num1.val), ".", str(num2.val)) |
| T -> num       | T.type=int <br />T.string=str(num.val)                       |

## 4.11

| 产生式       | 语法规则                                                |
| ------------ | ------------------------------------------------------- |
| S -> E       | S.islvalue = E.islvalue                                 |
| E -> E1 = E2 | if(E1.islvalue) E.islvalue = 1<br />else E.islvalue = 0 |
| E -> E1 + E2 | E.islvalue = 0                                          |
| E -> (E1)    | if(E1.islvalue) E.islvalue = 1<br />else E.islvalue = 0 |
| E -> id      | E.islvalue = 1                                          |

## 4.14 b

产生式 & 翻译规则  

P -> __{D.depth=0}__ 

​		D  

D -> __{D1.depth=D.depth} __

​		D1 ;

​		__{D2.depth=D.depth}__ 

​		D2  

D -> id 

​		__{print(D.depth)}__ 

​		: T  

D -> proc id 

​		__{print(D.depth)}__ 

​		; 

​		__{D1.depth=D.deph+1}__ 

​		D1 ; S

