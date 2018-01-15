module MainMenu exposing (..)

import Html exposing (..)
import Html.Attributes exposing (src, style)
import Html.Events exposing (onClick)
import List
import Model exposing (Model, Msg)
import Styles exposing (mainMenuStyle)


view : Model -> Html Msg
view model =
    div [ mainMenuStyle ]
        [ br [] []
        , img [ src "/src/assets/other/ElmChessLogo.png" ] []
        , br [] []
        , br [] []
        , button
            [ style
                [ ( "background", "url(\"/src/assets/buttons/StartGame.png\")" )
                , ( "width", "512px" )
                , ( "height", "110px" )
                ]
            , onClick Model.ShowGameTypesMenu
            ]
            []
        , br [] []
        , br [] []
        , button
            [ style
                [ ( "background", "url(\"/src/assets/buttons/Highscores.png\")" )
                , ( "width", "512px" )
                , ( "height", "110px" )
                ]
            , onClick Model.ShowHighscoresMenu
            ]
            []
        ]