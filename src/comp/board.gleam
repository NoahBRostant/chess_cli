import gleam/io
import gleam/list

const white_pieces = [
  "♜", "♞", "♝", "♚", "♛", "♝", "♞", "♜", "♟︎", "♟︎",
  "♟︎", "♟︎", "♟︎", "♟︎", "♟︎", "♟︎",
]

const black_pieces = [
  "♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖", "♙", "♙", "♙",
  "♙", "♙", "♙", "♙", "♙",
]


pub fn draw(white_pos, black_pos) -> Return(String, a) {
  let board = case list.combine(white_pos, black_pos) {

  }
}






// pub fn draw(white_pos, black_pos) {
//   let white = cell_maths(white_pos, 0, 0, 0)
//   let black = cell_maths(black_pos, 0, 0, 0)
//   io.debug(white)
//   io.debug(black)
//   io.println("  │ "<>" "<>" │ "<>" "<>" │   │   │   │   │   │   │               
//   ├───┼───┼───┼───┼───┼───┼───┼───┤
//   │   │   │   │   │   │   │   │   │               
//   ├───┼───┼───┼───┼───┼───┼───┼───┤               
//   │   │   │   │   │   │   │   │   │
//   ├───┼───┼───┼───┼───┼───┼───┼───┤
//   │   │   │   │   │   │   │   │   │
//   ├───┼───┼───┼───┼───┼───┼───┼───┤
//   │   │   │   │   │   │   │   │   │
//   ├───┼───┼───┼───┼───┼───┼───┼───┤
//   │   │   │   │   │   │   │   │   │
//   ├───┼───┼───┼───┼───┼───┼───┼───┤
//   │   │   │   │   │   │   │   │   │               
//   ├───┼───┼───┼───┼───┼───┼───┼───┤               
//   │   │   │   │   │   │   │   │   │
//   ╰───┴───┴───┴───┴───┴───┴───┴───╯",
//   )
//   Ok("success")
// }

// fn cell_maths(pos, x, y, i) {
//   case x {
//     7 -> y + 1
//     other -> other
//   }
//   case pos {
//     [_first, ..rest] -> cell_maths(rest, x, y, i+1)
//     [[a, b]] if a == x && b == y -> list.append(return, list.find(white_pieces, fn(o) { case o { value if value == i -> Ok() } }))
//
//     other -> list.append(return, " ")
//   }
//   return
// }
