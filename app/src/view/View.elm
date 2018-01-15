module View exposing (..)

import GameBoard
import GameTypeMenu
import Highscores
import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick, onInput)
import MainMenu
import Model exposing (Model, Msg)
import Styles


-- Main view of the app, we add subcomponents to separate files and expose their view functions inside this one


view : Model -> Html Msg
view model =
    div []
        [ showView model ]


showView : Model -> Html Msg
showView model =
    case model.route of
        Model.MainMenu ->
            MainMenu.view model

        Model.GameTypeMenu ->
            GameTypeMenu.view model

        Model.HighscoresMenu ->
            Highscores.view model

        Model.Game ->
            GameBoard.view model
