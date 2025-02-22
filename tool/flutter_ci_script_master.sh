#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/android_view/flutter_module_using_plugin"
    "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "android_splash_screen"
    "animations"
    "code_sharing/client"
    "code_sharing/server"
    "code_sharing/shared"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    "experimental/context_menus"
    "experimental/federated_plugin/federated_plugin"
    "experimental/federated_plugin/federated_plugin/example"
    "experimental/federated_plugin/federated_plugin_macos"
    "experimental/federated_plugin/federated_plugin_platform_interface"
    "experimental/federated_plugin/federated_plugin_web"
    "experimental/federated_plugin/federated_plugin_windows"
    # TODO(DomesticMouse): 'bottomAppBarColor' is deprecated and shouldn't be used.
    # "experimental/linting_tool"
    "experimental/material_3_demo"
    "experimental/varfont_shader_puzzle"
    "experimental/web_dashboard"
    "flutter_maps_firestore"
    # TODO(DomesticMouse): 'errorColor' is deprecated and shouldn't be used.
    # "form_app"
    "game_template"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    "jsonexample"
    "material_3_demo"
    "navigation_and_routing"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "simplistic_calculator"
    # TODO(DomesticMouse): A value of type 'dynamic' can't be returned from the method 'build' because it has a return type of 'Widget'.
    # "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web/_tool"
    "web/samples_index"
)

ci_projects "master" "${PROJECT_NAMES[@]}"

echo "-- Success --"
