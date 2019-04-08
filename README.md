Godot-Webview - WIP (Work-In-Progress) 
==========
This module is intended to work with [Godot Game Engine](https://godotengine.org/) (2 & 3) for iOS (only for now). You'll be able to open a webview in-game and attach events to it.
Ideal for oAuth redirects. E.g. Facebook Login.

![Image Sharing Screenshot](/media/screenshot.png "Image Sharing Screenshot")


### iOS
- Drop the "webview" directory inside the "modules" directory on the Godot source;
- Recompile the iOS export template following the [official instructions](http://docs.godotengine.org/en/stable/development/compiling/compiling_for_ios.html).
- For exporting, follow the [exporting to iOS official documentation](http://docs.godotengine.org/en/stable/learning/workflow/export/exporting_for_ios.html). 


#### Godot 2
Just make sure you're using your custom template (compiled in the previous step), for that  rename it to "godot_opt.iphone" and replace the file with same name inside the Xcode project.


#### Godot 3
- Export your project from Godot, it'll create an Xcode project;
- Copy the library (.a) you have compiled following the official documentation inside the exported Xcode project. You must override the 'your_project_name.a' file with this file.
