let init_rng () =
  Mkernel.map
    (fun () ->
       Mirage_crypto_rng_mkernel.initialize (module Mirage_crypto_rng.Fortuna))
    []
;;

let ( let@ ) finally fn = Fun.protect ~finally fn
let clean_rng rng () = Mirage_crypto_rng_mkernel.kill rng
let clean_stack stack () = Mnet.kill stack

let respond_file f req _server _state =
  let open Vifu.Response.Syntax in
  let source = Flux.Source.list f in
  let* () = Vifu.Response.with_source req source in
  Vifu.Response.respond `OK
;;

let respond_html f req server state =
  let document = state |> f in
  let open Vifu.Response.Syntax in
  let* () = Vifu.Response.with_tyxml req document in
  Vifu.Response.respond `OK
;;

let page ~doctitle content =
  let open Tyxml_html in
  html
    ~a:[ a_lang "en" ]
    (head
       (title (txt doctitle))
       [ link ~rel:[ `Stylesheet ] ~href:"/style.css" () ])
    (body content)
;;

let application
      ?(port = 80)
      ?(name = "service")
      ?(prefix = "10.0.0.2/24")
      rng
      routes
      state
  =
  let ipv4 = Ipaddr.V4.Prefix.of_string_exn prefix in
  Mkernel.run
    [ rng; Mnet.stack ~name ipv4 ]
    (fun rng (stack, tcp, _udp) () ->
       let@ () = clean_rng rng in
       let@ () = clean_stack stack in
       Vifu.run ~cfg:(Vifu.Config.v port) tcp routes state)
;;
