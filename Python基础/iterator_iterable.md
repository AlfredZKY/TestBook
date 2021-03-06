# 概念  
- 迭代器:是访问数据集合内元素的一种方式，一般用来遍历数据，但是它不能像列表一样使用下标来获取数据，也就是说迭代器是不能呢个返回的。  
1.Iterator:迭代器对象，必须要实现next魔法函数  
2.Iterable:可迭代对象，继承Iterator,必须要实现iter魔法函数  
`from collections import Iterable,Iterator
a = [1,2,3]
print(isinstance(a,Iterator))
print(isinstance(a,Iterable))`  
返回结果  
`False`  
`True`  
<font color = '#ff0000'>***note***:使用iter()可以使一个迭代对象变成一个迭代器。</font>  
`a = [1,3,2]`  
`a = iter(a)`
a即时可迭代对象又是迭代器。  

# 区别
>梳理迭代器(Iterator)与可迭代对象(Iterable)的区别
- 可迭代对象:继承迭代器对象，可以用for循环(实现了iter函数)  
- 迭代器对象:可以用next获取下一个值(实现了next方法)，但是每一个值只能回去一次，单纯的迭代器没有实现iter魔法函数，所以不能使用for循环  
- 只要可以用作for循环的都是可迭代对象  
- 只要可以用next函数的都是迭代器对象  
- 列表，字典，字符串都是可迭代器对象但是不是迭代器队形，如果想变成迭代器对象，使用iter函数  
- Python的for循环本质上是next()进行不断调用，for循环的是可迭代对象，可迭代对象中有iter魔法函数，可迭代对象继承迭代器，迭代器对象中有next魔法函数  
- 一般有迭代对象变迭代器对象  
  
# 可迭代对象
可迭代对象每次使用for循环一个数组的时候，本质上会从类中尝试调用iter魔法函数，如果类中有iter魔法函数的话，会优先调用iter函数，这里切记必须要返回一个可以迭代的对象，不然就会报错。
如果没有定义iter魔法函数的话，会创建一个默认的迭代器，该迭代器调用getitem魔法函数，如果你没有定义iter和getitem两个魔法函数的话，该类型就不是可迭代对象，就会报错。

# 迭代器对象
一开始提起，iter搭配Iterable做可迭代对象，next搭配Iterator做迭代器。next()接受一个迭代器对象，作用是获取迭代器对象的下一个值，迭代器是用来做迭代的，只会在需要的时候产生数据。
和可迭代对象不同，可迭代对象一开始是把所有的列表放在一个变量中，然后用getitem方法不断的返回数值，getitem中的item就是索引值。  
但是next方法并没有索引值，所以需要自己维护一个索引值，方便获取下一个变量的位置  

# 规律
- iter让类变成可迭代对象，next让类变成迭代器(要维护索引值)。  
- 可迭代对象可以用for循环，迭代器可以用next获取下一个值。  
- 迭代器如果想要变成可迭代对象用for循环，就要在迭代器内部加上iter魔法函数  
- 可迭代对象如果想要能用next魔法函数，使用自身类中的iter()方法即可变成迭代器对象  

# 迭代器的设置模式
迭代器模式:提供一种方式顺序访问聚合对象中的各种元素，而又不暴露该对象的内部   
迭代器的设计模式是一种经典的设计模式，根据迭代器的特性(根据索引值读取下一个内容，不一次性读取大量数据到内存)不建议将next和iter都写在一个类中去实现  

# 生成器
生成器:函数中只要有yield，这个函数就会变成生成器。每次运行到yield的时候，函数就会暂停，并且保存当前的运行状态，返回当前的数值，并在下一次执行next方法的时候，又从当前位置继续往下走。