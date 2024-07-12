import gleam/io
import gleam/erlang
import gleam/string
import comp/menu
import comp/tp_game
import comp/sp_game

pub fn main() {
  case menu.start() {
    "start-game" -> start_game()
    "exit-game" -> exit_game()

    _ -> exit_game_with_err()
  }
}

fn exit_game() {
  io.println("Exiting Game")
}

fn exit_game_with_err() {
  io.println("Error Found: Exiting Game")
}

pub fn start_game() {
  menu.title()
  io.println("Choose Game Mode:\n1 Single Player\n2 Multiplayer\n0 Back")
  case erlang.get_line("> ") {
    Ok("1\n") -> sp_start()
    Ok("2\n") -> tp_start()
    Ok("0\n") -> main()
    Ok(_) -> start_game()

    Error(_) -> start_game()
  }
}

fn sp_start() {
  case sp_game.start() {
    "win-state: " <> name -> win_state(name)
    "lose-state: " <> name -> lose_state(name)

    _ -> exit_game_with_err()
  }
}

fn tp_start() {
  case tp_game.start() {
    "Ok " <> name -> win_state(name)

    _ -> exit_game_with_err()
  }
}

fn win_state(name: String) {
  menu.title()
  io.println("Congratulations "<>name<>" on winning")
  erlang.get_line("Press Enter to continue: ")
  main()
}

fn lose_state(name: String) {
  menu.title()
  io.println("Oh No! better luck next time "<>name)
  erlang.get_line("Press Enter to continue: ")
  main()
}
