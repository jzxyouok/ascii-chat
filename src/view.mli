open Lwt

type window = One | Two | Three | Four

val max_cols: int

val max_rows: int

val image_dimensions: window -> (int * int)

val text_dimensions: window -> (int * int)

val input_dimensions: window -> (int * int)

val print_unbuf: string -> unit

val clear_screen: unit -> unit

val restore_cursor: unit -> unit

val copy_to_grid: (int * int) -> (int * int) -> string array array -> unit

val print_to_grid: (int * int) -> (int * int) -> string -> unit

val outline: window -> unit

val print_grid: unit -> unit

val pane_start_coord: int -> window -> (int * int)

val layout_for_num_users: int -> window

val render: bool -> unit
