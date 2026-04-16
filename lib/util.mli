val init_rng : unit -> Mirage_crypto_rng_mkernel.rng Mkernel.arg
val ( let@ ) : (unit -> unit) -> (unit -> 'a) -> 'a
val clean_rng : Mirage_crypto_rng_mkernel.rng -> unit -> unit
val clean_stack : Mnet.stack -> unit -> unit

val respond_file
  :  string list
  -> ('a, 'b) Vifu.Request.t
  -> 'c
  -> 'd
  -> (Vifu.Response.empty, Vifu.Response.sent, unit) Vifu.Response.t

val respond_html
  :  ('a -> Tyxml_html.doc)
  -> ('b, 'c) Vifu.Request.t
  -> 'd
  -> 'a
  -> (Vifu.Response.empty, Vifu.Response.sent, unit) Vifu.Response.t

val page
  :  doctitle:string
  -> [< Html_types.flow5 ] Tyxml_html.elt list
  -> [> Html_types.html ] Tyxml_html.elt

val application
  :  ?port:int
  -> ?name:string
  -> ?prefix:string
  -> Mirage_crypto_rng_mkernel.rng Mkernel.arg
  -> (Vifu.Server.t
      -> 'a
      -> (Vifu.Response.empty, Vifu.Response.sent, unit) Vifu.Response.t)
       Vifu.Route.t
       list
  -> 'a
  -> unit
