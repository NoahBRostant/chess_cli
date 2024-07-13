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

pub fn draw(white_pos, black_pos) {
  let white = cell_maths(white_pos, 0, 0)
  let black = cell_maths(black_pos, 0, 0)
  io.debug(white)
  io.debug(black)
  io.println("  │ "<>" "<>" │ "<>" "<>" │   │   │   │   │   │   │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤               
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤               
  │   │   │   │   │   │   │   │   │
  ╰───┴───┴───┴───┴───┴───┴───┴───╯",
  )
  Ok("success")
}

fn cell_maths(pos, x, y, i) {
  case x {
    7 -> y + 1
    other -> other
  }
  let return = case pos {
    [first, ..rest] -> cell_maths(rest, x, y, i+1)
    [[a, b]] if a == x && b == y -> list.append(white_pieces[i])

    other -> []
  }
  return
}
