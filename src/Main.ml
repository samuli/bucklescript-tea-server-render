open Tea.App
open Tea
open Tea.Html

type msg =
  | Add
  | Delete of int
[@@bs.deriving {accessors}]

type model = string array

let init (args:model) =
  ( args, Cmd.none)
         
let update model = function
  | Add ->
     ( Array.append model [| "Lorem ipsum" ^ (string_of_float (Js.Math.random())) |]
     , Cmd.none)
  | Delete i ->
     ( (Array.concat
          [ (Array.sub model 0 (i))
          ; (Array.sub model (i+1) (Array.length model-i-1))]
       ), Cmd.none)

let view model =
  div
    []
    [ button [ onClick Add ] [ text "Add" ]
    ; ul [] (List.mapi
               (fun i s -> li [ onClick (Delete i)] [ text s ])
               (Array.to_list model))
    ]
    
let main root data hydrate =
  standardProgram { 
    init = (fun args -> init args);
    update;
    view;
    subscriptions = (fun _ ->  Sub.none)
  } root data hydrate
