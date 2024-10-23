(*segments for memory access is given in a module called Segment*)
module Segment = struct
  type t =
    | Argument
    | Local
    | Static
    | Constant
    | This
    | That
    | Pointer
    | Temp
end


(*Arithmetic and logical operations*)
type arithmetic_command=
  | Add
  | Sub
  | Neg
  | Eq
  | Gt
  | Lt
  | And
  | Or
  | Not


type n=int (*n is index for segments*)


(* Memory access commands *)
type memory_access_command =
  | Push of Segment.t * n  
  | Pop of Segment.t * n   

(* Program flow commands ie,Branching *)
type control_flow_command =
  | Label of string
  | Goto of string
  | IfGoto of string

(* Function calling commands *)
type function_command =
  | Function of string * int  (*fun declaration is   **fun_name number of local variables**    *)
  | Call of string * int      (*fun calling is    **fun_name number of arguments**    *)
  | Return                    


type  instruction=
  | Arithmetic of arithmetic_logical
  | Memory of memory_access
  | Flow of control_flow
  | FunctionCmd of function_command
