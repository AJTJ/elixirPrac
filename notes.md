# Elixir notes

## Currently working on:
https://elixir-lang.org/getting-started/basic-types.html#lists-or-tuples

## Interactive Elixir

`iex`
- type in terminal for REPL
`h someFunction`
- defines a function
`h`
- docs for IEX helpers


## Commands

`elixir fileName.exs`
- run files with `elixir`

## Basic data types
| syntax    | type          |
| --------- | ------------- |
| 1         | integer       |
| 0x1F      | integer       |
| 1.0       | float         |
| true      | boolean       |
| :atom     | atom / symbol |
| "elixir"  | string        |
| [1, 2, 3] | list          |
| {1, 2, 3} | tuple         |

### Numbers
- division ( / ) always returns a float.
  - `div` or `rem` will return integers.
- floats are 64-bit double precision.
  - 
- support for `binary`, `octal`, and `hexadecimal` numbers.

### Booleans
- `:something:` Atoms (symbols) An constant whose value is its own name.
- Often used to express the state of an operation such as `:ok` or `:error`
- true and false and nil are also atoms: `true` === `:true`
  - they don' require the parenthesis `true` `false` `nil`

### Strings
- "aString" in double quotes and in UTF-8
  - char lists are `''` single quoted
- `\n` for line breaks

### anonymous functions
- `add = fn a, b => a + b end`
  - `add.(2,3)`
    - the . is required to invoke an anonymous function
    - it also ensures that it is not calling a named function under the same name (????)
    - is identified by arguemnts
    - are also *closures*

### (Linked) Lists
- brackets are used to specify lists of values of any type.
- `[1,2,true,"dog"]`
  - `++` or `--` can be used to concatenate or subtract lists.
  - *immutable* (like all elixir data structures)
  - `hd/1` and `tl/1` will separate the head (first item), or the the tail (all the remaining items)

### Tuples
- bracketed and can hold any values.
  - They are stored contiguously thus are quickly accessed via index, and the size is quickly accessed.
- `myTup = {1, 2, :ok, "hello"}`
  - use `elem` to get elements out of a tuple
  - `elem(myTup, 2)` should be `ok`
  - use `tuple_size/1` to get size
  - `put_elem/3` to add to a tuple

getting the length of a long list is expensive (lists are linked)
updating or adding elements to tuples is expensive (creates new tuple)
