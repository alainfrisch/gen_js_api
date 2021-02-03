module Issue116 : sig type t end =
  ((struct
      [@@@js.dummy "!! This code has been generated by gen_js_api !!"]
      [@@@ocaml.warning "-7-32-39"]
      type t = Ojs.t
      let rec (t_of_js : Ojs.t -> t) = fun x2 -> x2
      and (t_to_js : t -> Ojs.t) = fun x1 -> x1
    end)[@merlin.hide ]) 
module Issue117 :
  sig module T : sig val log : 'a -> unit val log2 : 'a -> 'b -> unit end end
  =
  ((struct
      [@@@js.dummy "!! This code has been generated by gen_js_api !!"]
      [@@@ocaml.warning "-7-32-39"]
      module T =
        struct
          let (log : 'a -> unit) =
            fun x3 ->
              ignore
                (Ojs.call (Ojs.get Ojs.global "console") "log"
                   [|(Obj.magic x3)|])
          let (log2 : 'a -> 'b -> unit) =
            fun x4 ->
              fun x5 ->
                ignore
                  (Ojs.call (Ojs.get Ojs.global "console") "jsLog2"
                     [|(Obj.magic x4);(Obj.magic x5)|])
        end
    end)[@merlin.hide ]) 
module Issue124 :
  sig
    type a
    and b = {
      a: a }
    type 'a dummy
    type 'a wrapped =
      | Wrapped of 'a 
    type u =
      | Unknown of Ojs.t 
      | T of t 
      | WrappedT of t wrapped 
    and t = [ `U of u ] dummy
  end =
  ((struct
      [@@@js.dummy "!! This code has been generated by gen_js_api !!"]
      [@@@ocaml.warning "-7-32-39"]
      type a = Ojs.t
      and b = {
        a: a }
      let rec (a_of_js : Ojs.t -> a) = fun x7 -> x7
      and (a_to_js : a -> Ojs.t) = fun x6 -> x6
      and b_of_js js = { a = (a_of_js js) }
      and b_to_js { a } = a_to_js a
      type 'a dummy = Ojs.t
      let rec (dummy_of_js : (Ojs.t -> 'a) -> Ojs.t -> 'a dummy) =
        fun _ -> fun x9 -> x9
      and (dummy_to_js : ('a -> Ojs.t) -> 'a dummy -> Ojs.t) =
        fun _ -> fun x8 -> x8
      type 'a wrapped =
        | Wrapped of 'a 
      let rec wrapped_of_js = let f a_of_js x = Wrapped (a_of_js x) in f
      and wrapped_to_js =
        let f a_to_js = function | Wrapped a -> a_to_js a in f
      type u =
        | Unknown of Ojs.t 
        | T of t 
        | WrappedT of t wrapped 
      and t = [ `U of u ] dummy
      let rec (u_of_js : Ojs.t -> u) =
        fun x15 ->
          let x16 = x15 in
          match Ojs.type_of (Ojs.get x16 "type") with
          | "number" ->
              (match Ojs.int_of_js (Ojs.get x16 "type") with
               | _ -> Unknown x16)
          | "string" ->
              (match Ojs.string_of_js (Ojs.get x16 "type") with
               | "t" -> T (t_of_js x16)
               | "wrapped_t" -> WrappedT (wrapped_of_js t_of_js x16)
               | _ -> Unknown x16)
          | "boolean" ->
              (match Ojs.bool_of_js (Ojs.get x16 "type") with
               | _ -> Unknown x16)
          | _ -> Unknown x16
      and (u_to_js : u -> Ojs.t) =
        fun x10 ->
          match x10 with
          | Unknown x11 -> x11
          | T x12 -> t_to_js x12
          | WrappedT x13 -> wrapped_to_js t_to_js x13
      and t_of_js = Obj.magic
      and t_to_js = Obj.magic
    end)[@merlin.hide ]) 
