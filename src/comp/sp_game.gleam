import gleam/erlang
import gleam/io
import gleam/string

pub fn start() -> String {
  io.println("Choose a Name:")
  let name = erlang.get_line("> ")
  case erlang.get_line("1 - win | 2 - lose") {
    Ok("1\n") ->
      "win-state: "
      <> string.inspect(name)
      |> string.drop_left(4)
      |> string.drop_right(4)
      |> string.capitalise()
    Ok("2\n") ->
      "lose-state: "
      <> string.inspect(name)
      |> string.drop_left(4)
      |> string.drop_right(4)
      |> string.capitalise()
    Ok(_) -> "Catch Error: 001"

    Error(_) -> "Catch Error: 002"
  }
}
