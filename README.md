# arre_assignment_flutter
A Flutter app for interviews, In this project I have converted figma design to dart code

### App info
Flutter Version: Flutter 3.10.6
Dart Version: 3.0.6

#### Folder Structure

```
lib
├── bloc 🤓 => The file contains the logic
│   │
│   ├── languages_bloc.dart 
│   │   [Contains the logic to maintain the local state of the App to select the language by reverpod]
│   │
│   ├── splash_bloc.dart
│   │   [Contains the logic for splash screen, eg: hiding/showing status bar, navigate]
│   │
│   └── system_bloc.dart
│       [Contains basic global configuration for the app]
│
├── component => This file contains the component
│   ├── languageSheetComponet
│   │   [Contains all the components required for LanguageSheet]
│   │       │
│   │       ├── langauge_sheet_description
│   │       │    [ Small widget for description ]
│   │       │
│   │       ├── langauge_sheet_positive_button
│   │       │    [ Button widget for success ]
│   │       │
│   │       ├── langauge_sheet_title
│   │       │   [ widget to display Title]
│   │       │
│   │       ├── language_scheet_lib => This is the library that exports all the widget in this tree
│   │       │   
│   │       ├── language_sheet_grid_language
│   │       │   [ Widget to display language ]
│   │       │
│   │       └── language_sheet_negative_button
│   │            [Negative button widget]
│   │
│   ├── myAccountComponent
│   │   [Contains all the components required for MyComponentScreen]
│   │       │
│   │       ├── custom_elevated_button_component
│   │       │    [ Elevated button used for Help Center, Code of conduct, etc]
│   │       │
│   │       ├── custom_switch_button
│   │       │   [ Switch button to toggle day/night mode ]
│   │       │
│   │       ├── custom_text_button_component
│   │       │   [ Text button for Terms of service, privacy policy, etc]
│   │       │
│   │       ├── language_bottom_sheet_component 
│   │       │   [ Bottom Sheet component ]
│   │       │   
│   │       └── my_account_component_lib => Library to export all the components in this tree
│   │   
│   └── custom_app_bar
│        [ AppBar widget ]
│
├── config => The file contains the configuration file that used main.dart
│   ├── routes 🛣️
│   │       │
│   │       ├── app_routes
│   │       │   [Contains all the routes used in main.dart ]
│   │       │   
│   │       └── route_path
│   │           [ Class to add all the routes, which can be fetched using class ]
│   ├── theme 💄
│   │       │
│   │       ├── theme_collection
│   │       │   [Collection of Themes like dark, light, etc ]
│   │       │   
│   │       ├── abstract_theme
│   │       │   [ Abstract class of theme which will be extended by different theme used ]
│   │       │
│   │       ├── my_theme
│   │       │    [ Current theme setup ]
│   │       │
│   │       └── theme_manager
│   │           [ Method to select theme ]
│   │
│   ├── app_init.dart ⚙️
│   │
│   ├── r.dart 🎞️
│   │   [ Contains Assets path ]
│   │
│   └── text_styles.dart
│       [ Contains all the textStyle used in the App ]
│
├── constant
│   └──font_constant
│       [ Constant of Fonts that are used in the app ]
│
├── cors
│   └── common_utils
│        [ This file will have the methods to display snackbar, dialogue, etc ]
│
├── data ☁️
│   └──language_list
│      [ List<Map<String, dynamic>> data of Language ]
│
├── features 🪶
│   ├── my_account_screen.dart
│   │   [ Main page for the Assignment ]
│   │
│   └── splash_screen.dart
│       [ First Screen of the app, which displays UI for 2 sec ]
│
├── model 💃
│   └── language_model.dart
│        [ Model for the language ]
│
└── main.dart 🚀
    [Project begins Here]
```



[Download APK](https://drive.google.com/file/d/1Vqet3MmWPSgruYVPWnABZ9TnBqGogwBb/view?usp=sharing)
