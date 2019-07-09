# Elixir notes

## Currently working on:
https://elixir-lang.org/getting-started/basic-types.html

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
- flotas are 64-bit

### Booleans
- Atoms (symbols) An constant whose value is its own name.
- Often used to express the state of an operation such as `:ok` or `:error`
- true and false and nil are also atoms: `true` === `:true`

### Strings
- in double quotes and in UTF-8
- `\n` for line breaks