fn main() {
	a := 10
	if true {
		a := 20 // error: redefinition of `a`
	}
	// warning: unused variable `a`
}

mut a := 0
mut b := 1
println('$a, $b') // 0, 1
a, b = b, a
println('$a, $b') // 1, 0

import ui
import gg

fn draw(ctx &gg.Context) {
	gg := ctx.parent.get_ui().gg
	gg.draw_rect(10, 10, 100, 50)
}

mut nums := [1, 2, 3]
nums << 4
println(nums) // "[1, 2, 3, 4]"
// append array
nums << [5, 6, 7]
println(nums) // "[1, 2, 3, 4, 5, 6, 7]"
mut names := ['John']
names << 'Peter'
names << 'Sam'
// names << 10  <-- This will not compile. `names` is an array of strings.
println(names.len) // "3"
println('Alex' in names) // "false"

mut nums := [1, 2, 3]
println(nums) // "[1, 2, 3]"
println(nums[1]) // "2"
nums[1] = 5
println(nums) // "[1, 5, 3]"
println(nums.len) // "3"
nums = [] // The array is now empty
println(nums.len) // "0"
// Declare an empty array:
users := []int{}

a := i64(123)
b := byte(42)
c := i16(12345)

rocket := `🚀`
assert 'aloha!'[0] == `a`

s := '42'
n := s.int() // 42

s := r'hello\nworld'
println(s) // "hello\nworld"
numbers := map{
	'one': 1
	'two': 2
}

import os

fn main() {
	// read text from stdin
	name := os.input('Enter your name: ')
	println('Hello, $name!')
}

struct User {
	age  int
	name string
}

name := 'Bob'
println('Hello, $name!')

x := 123.4567
println('x = ${x:4.2f}')
println('[${x:10}]') // pad with spaces on the left => [   123.457]
println('[${int(x):-10}]') // pad with spaces on the right => [123       ]
println('[${int(x):010}]') // pad with zeros on the left => [0000000123]

name := 'Bob'
bobby := name + 'by' // + is used to concatenate strings
println(bobby) // "Bobby"
mut s := 'hello '
s += 'world' // `+=` is used to append to a string
println(s) // "hello world"

nums := [1, 2, 3, 4, 5, 6]
even := nums.filter(it % 2 == 0)
println(even) // [2, 4, 6]
// filter can accept anonymous functions
even_fn := nums.filter(fn (x int) bool {
	return x % 2 == 0
})
println(even_fn)
words := ['hello', 'world']
upper := words.map(it.to_upper())
println(upper) // ['HELLO', 'WORLD']
// map can also accept anonymous functions
upper_fn := words.map(fn (w string) string {
	return w.to_upper()
})
println(upper_fn) // ['HELLO', 'WORLD']

import os { input }
import os { input, user_os }
import crypto.sha256
import mymod.sha256 as mysha256

fn main() {
	// read text from stdin
	name := input('Enter your name: ')
	println('Hello, $name!')
}

import time
import math

type MyTime = time.Time

fn (mut t MyTime) century() int {
	return int(1.0 + math.trunc(f64(t.year) * 0.009999794661191))
}

fn main() {
	mut my_time := MyTime{
		year: 2020
		month: 12
		day: 25
	}
	println(time.new_time(my_time).utc_string())
	println('Century: $my_time.century()')
}

a := 10
b := 20
if a < b {
	println('$a < $b')
} else if a > b {
	println('$a > $b')
} else {
	println('$a == $b')
}

struct Abc {
	val string
}

struct Xyz {
	foo string
}

type Alphabet = Abc | Xyz

x := Alphabet(Abc{'test'}) // sum type
if x is Abc {
	// x is automatically casted to Abc and can be used here
	println(x)
}
if x !is Abc {
	println('Not Abc')
}
match x {
	Abc {
		// x is automatically casted to Abc and can be used here
		println(x)
	}
	Xyz {
		// x is automatically casted to Xyz and can be used here
		println(x)
	}
}

fn test() (int, int) {
   return 0, 1
 }
