import gleam/io

pub fn draw() {
  io.println(
    "  │ ♜ │ ♞ │ ♝ │ ♚ │ ♛ │ ♝ │ ♞ │ ♜ │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │ ♟︎ │ ♟︎ │ ♟︎ │ ♟︎ │ ♟︎ │ ♟︎ │ ♟︎ │ ♟︎ │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤               
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │   │   │   │   │   │   │   │   │
  ├───┼───┼───┼───┼───┼───┼───┼───┤
  │ ♙ │ ♙ │ ♙ │ ♙ │ ♙ │ ♙ │ ♙ │ ♙ │               
  ├───┼───┼───┼───┼───┼───┼───┼───┤               
  │ ♖ │ ♘ │ ♗ │ ♕ │ ♔ │ ♗ │ ♘ │ ♖ │
  ╰───┴───┴───┴───┴───┴───┴───┴───╯",
  )
  Ok("success")
}
