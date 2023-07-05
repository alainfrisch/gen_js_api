[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
[@@@warning "-22"]
module M =
  struct
    type t = Ojs.t
    let rec t_of_js : Ojs.t -> t = fun (x2 : Ojs.t) -> x2
    and t_to_js : t -> Ojs.t = fun (x1 : Ojs.t) -> x1
    let (prop_get_arg : t -> int) =
      ((fun (x3 : t) ->
          Ojs.int_of_js
            (Jsoo_runtime.Js.get (t_to_js x3) (Ojs.string_to_js "propGetArg")))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.get' attribute."])
    let (prop_get : unit -> int) =
      ((fun () ->
          Ojs.int_of_js
            (Jsoo_runtime.Js.get
               (Jsoo_runtime.Js.get
                  (Jsoo_runtime.Js.pure_js_expr "globalThis")
                  (Ojs.string_to_js "scope")) (Ojs.string_to_js "propGet")))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.get' attribute."])
    let (set_prop : t -> int -> unit) =
      ((fun (x4 : t) ->
          fun (x5 : int) ->
            Jsoo_runtime.Js.set (t_to_js x4) (Ojs.string_to_js "prop")
              (Ojs.int_to_js x5))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.set' attribute."])
    let (set_global : int -> unit) =
      ((fun (x6 : int) ->
          Jsoo_runtime.Js.set
            (Jsoo_runtime.Js.get (Jsoo_runtime.Js.pure_js_expr "globalThis")
               (Ojs.string_to_js "scope")) (Ojs.string_to_js "global")
            (Ojs.int_to_js x6))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.set' attribute."])
    let (new_thing_unit : unit -> t) =
      ((fun () ->
          t_of_js
            (Jsoo_runtime.Js.new_obj
               (Jsoo_runtime.Js.get
                  (Jsoo_runtime.Js.get
                     (Jsoo_runtime.Js.pure_js_expr "globalThis")
                     (Ojs.string_to_js "scope"))
                  (Ojs.string_to_js "ThingUnit")) [||]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.new' attribute."])
    let (new_thing_args : int -> t) =
      ((fun (x7 : int) ->
          t_of_js
            (Jsoo_runtime.Js.new_obj
               (Jsoo_runtime.Js.get
                  (Jsoo_runtime.Js.get
                     (Jsoo_runtime.Js.pure_js_expr "globalThis")
                     (Ojs.string_to_js "scope"))
                  (Ojs.string_to_js "ThingArgs")) [|(Ojs.int_to_js x7)|]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.new' attribute."])
    let (method_call_global : t -> unit) =
      ((fun (x8 : t) ->
          ignore
            (Jsoo_runtime.Js.meth_call (t_to_js x8) "methodCallGlobal" [||]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.call' attribute."])
    let (method_call_unit : t -> unit -> int) =
      ((fun (x9 : t) ->
          fun () ->
            Ojs.int_of_js
              (Jsoo_runtime.Js.meth_call (t_to_js x9) "methodCallUnit" [||]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.call' attribute."])
    let (method_call_args : t -> int -> int) =
      ((fun (x11 : t) ->
          fun (x10 : int) ->
            Ojs.int_of_js
              (Jsoo_runtime.Js.meth_call (t_to_js x11) "methodCallArgs"
                 [|(Ojs.int_to_js x10)|]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.call' attribute."])
    let (method_call_unit_unit : t -> unit -> unit) =
      ((fun (x12 : t) ->
          fun () ->
            ignore
              (Jsoo_runtime.Js.meth_call (t_to_js x12) "methodCallUnitUnit"
                 [||]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.call' attribute."])
    let (method_call_args_unit : t -> int -> unit) =
      ((fun (x14 : t) ->
          fun (x13 : int) ->
            ignore
              (Jsoo_runtime.Js.meth_call (t_to_js x14) "methodCallArgsUnit"
                 [|(Ojs.int_to_js x13)|]))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.call' attribute."])
    let (global : t) =
      ((t_of_js
          (Jsoo_runtime.Js.get
             (Jsoo_runtime.Js.get (Jsoo_runtime.Js.pure_js_expr "globalThis")
                (Ojs.string_to_js "scope")) (Ojs.string_to_js "global")))
      [@ocaml.ppwarning
        "Heuristic for automatic binding is deprecated; please add the '@js.global' attribute."])
    let (invoke : unit -> unit) =
      fun () ->
        Ojs.unit_of_js
          (Jsoo_runtime.Js.fun_call
             (Jsoo_runtime.Js.get (Jsoo_runtime.Js.pure_js_expr "globalThis")
                (Ojs.string_to_js "scope")) [||])
  end
let (d : unit -> unit) =
  fun () ->
    ignore
      (Jsoo_runtime.Js.meth_call
         (Jsoo_runtime.Js.get
            (Jsoo_runtime.Js.get
               (Jsoo_runtime.Js.get
                  (Jsoo_runtime.Js.pure_js_expr "globalThis")
                  (Ojs.string_to_js "a")) (Ojs.string_to_js "b"))
            (Ojs.string_to_js "c")) "d" [||])
