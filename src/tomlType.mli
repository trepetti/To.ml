(** Toml arrays
  * - They are implemented as lists the spirit of TOML simplicity
  * - They are typed, but can change the type if you nest them
  *)
type tomlNodeArray =
  | NodeBool of bool list
  | NodeInt of int list
  | NodeFloat of float list
  | NodeString of string list
  | NodeDate of string list
  | NodeArray of tomlNodeArray list (* this can have any type *)

(** Toml values *)
and tomlValue =
  | TBool of bool
  | TInt of int
  | TFloat of float
  | TString of string
  | TDate of string
  | TArray of tomlNodeArray
  | TTable of tomlTable

and tomlTable = (string, tomlValue) Hashtbl.t
