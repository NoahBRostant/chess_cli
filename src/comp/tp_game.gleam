import comp/board
import gleam/erlang
import gleam/int
import gleam/io
import gleam/string

const white_pieces = [
  "rook", "knight", "bishop", "king", "queen", "bishop", "knight", "rook",
  "pawn", "pawn", "pawn", "pawn", "pawn", "pawn", "pawn", "pawn",
]

const white_pos = [
  [0, 0], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0], [0, 1], [1, 1],
  [2, 1], [3, 1], [4, 1], [5, 1], [6, 1], [7, 1],
]

const black_pieces = [
  "rook", "knight", "bishop", "king", "queen", "bishop", "knight", "rook",
  "pawn", "pawn", "pawn", "pawn", "pawn", "pawn", "pawn", "pawn",
]

const black_pos = [
  [0, 7], [1, 7], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [0, 6], [1, 6],
  [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6],
]

const captured_white = []

const captured_black = []

const turn = 0

pub fn start() -> String {
  io.println("Player1 Choose a Name:")
  let name1 =
    erlang.get_line("> ")
    |> string.inspect()
    |> string.drop_left(4)
    |> string.drop_right(4)
  io.println("Player2 Choose a Name:")
  let name2 =
    erlang.get_line("> ")
    |> string.inspect()
    |> string.drop_left(4)
    |> string.drop_right(4)
  let player1 = get_name_centered(name1)
  let player2 = get_name_centered(name2)
  main_loop(white_pos, black_pos, player1, player2)
}

fn draw_board() {
  case board.draw() {
    Ok(_) -> "success"

    Error(_) -> error_handler(string.inspect(Error(_)))
  }
}

fn main_loop(white_pos, black_pos, player1, player2) {
  io.println("
 ╭──────<=>──────╮ ╭───────•───────╮
 │" <> player1 <> "│ │" <> player2 <> "│
 ╰┬───┬─<=>───┬──┴┬┴──┬───┬•──┬───┬╯")
  draw_board()
  case erlang.get_line("> ") {
    Ok("0\n") -> "Ok dave"
    Ok(_) -> "Oh No!"

    Error(_) -> "Error"
  }
}

fn get_name_centered(name: String) -> String {
  let name = case string.length(name) {
    16 ->
      string.drop_right(name, {
        string.length(name)
        -15
      })
    _ -> name
  }
  let front_spaces =
    "       "
    |> string.drop_right(string.length(name) / 2)
  let back_spaces =
    "       "
    |> string.drop_left(string.length(name) / 2)
  let result = case string.length(name) {
    2 | 4 | 6 | 8 | 10 ->
      front_spaces <> string.capitalise(name) <> " " <> back_spaces
    _ -> front_spaces <> string.capitalise(name) <> back_spaces
  }
  front_spaces <> string.capitalise(name) <> back_spaces
  result
}

fn error_handler(error: String) {
  string.inspect(error)
  |> string.drop_left(4)
  |> string.drop_right(4)
  |> io.debug()
}
