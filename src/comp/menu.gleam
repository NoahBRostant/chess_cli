import gleam/io
import gleam/erlang

pub fn start() -> String {
  title()
  io.println("Main Menu:")
  io.println("1 Start New Game")
  io.println("2 Options")
  io.println("3 Credits")
  io.println("0 Exit")
  case erlang.get_line("> ") {
    Ok("1\n") -> start_game()
    Ok("2\n") -> menu_options()
    Ok("3\n") -> menu_credits()
    Ok("0\n") -> exit_game()
    Ok(_) -> err_option_invalid()

    Error(_) -> err_option_invalid()
  }
}

fn err_option_invalid() {
  io.println("Invalid option. Try a different option")
  start()
}

pub fn title() {
  io.println("CCCCCCCCCCCCChhhhhhh                                                                                    TTTTTTTTTTTTTTTTTTTTTTT
     CCC::::::::::::Ch:::::h                                                                                    T:::::::::::::::::::::T
   CC:::::::::::::::Ch:::::h                                                                                    T:::::::::::::::::::::T
  C:::::CCCCCCCC::::Ch:::::h                                                                                    T:::::TT:::::::TT:::::T
 C:::::C       CCCCCC h::::h hhhhh           eeeeeeeeeeee        ssssssssss       ssssssssss                    TTTTTT  T:::::T  TTTTTT
C:::::C               h::::hh:::::hhh      ee::::::::::::ee    ss::::::::::s    ss::::::::::s                           T:::::T        
C:::::C               h::::::::::::::hh   e::::::eeeee:::::eess:::::::::::::s ss:::::::::::::s                          T:::::T        
C:::::C               h:::::::hhh::::::h e::::::e     e:::::es::::::ssss:::::ss::::::ssss:::::s ---------------         T:::::T        
C:::::C               h::::::h   h::::::he:::::::eeeee::::::e s:::::s  ssssss  s:::::s  ssssss  -:::::::::::::-         T:::::T        
C:::::C               h:::::h     h:::::he:::::::::::::::::e    s::::::s         s::::::s       ---------------         T:::::T        
C:::::C               h:::::h     h:::::he::::::eeeeeeeeeee        s::::::s         s::::::s                            T:::::T        
 C:::::C       CCCCCC h:::::h     h:::::he:::::::e           ssssss   s:::::s ssssss   s:::::s                          T:::::T        
  C:::::CCCCCCCC::::C h:::::h     h:::::he::::::::e          s:::::ssss::::::ss:::::ssss::::::s                       TT:::::::TT      
   CC:::::::::::::::C h:::::h     h:::::h e::::::::eeeeeeee  s::::::::::::::s s::::::::::::::s                        T:::::::::T      
     CCC::::::::::::C h:::::h     h:::::h  ee:::::::::::::e   s:::::::::::ss   s:::::::::::ss                         T:::::::::T      
        CCCCCCCCCCCCC hhhhhhh     hhhhhhh    eeeeeeeeeeeeee    sssssssssss      sssssssssss                           TTTTTTTTTTT
  ")
}

fn menu_options() {
  title()
  io.println("Options:")
  io.println("0 Back")
  case erlang.get_line("> ") {
    Ok("0\n") -> start()
    Ok(_) -> menu_options()

    Error(_) -> menu_options()
  }
}

fn start_game() {
  "start-game"
}

fn exit_game() {
  "exit-game"
}

fn menu_credits() {
  title()
  io.println("Written By: Noah Bradford Rostant\nUsing the Gleam language!")
  io.println("Credits:\n0 Back")
  case erlang.get_line("> ") {
    Ok("0\n") -> start()
    Ok(_) -> menu_credits()

    Error(_) -> menu_credits()
  }
}
