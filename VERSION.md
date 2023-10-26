# TRAnimation

2023-10-26, Version 1.3
* New: Framework changes for alternate renderer support (SceneKit is currently in private testing)
* New: Early support for rendering sprites to pictures
* Change: There's now a single animation timer for all platforms
* Change: It's no longer possible to access sprite's children array directly from outside TRAnimationSprite; it's now a protected property. Accessor methods must be used. (We need to do internal tracking of when sprites are removed, for alternate render support)
* Fix: The animation timer could spawn multiple timers, causing the frame rate to become very high
* Miscellaneous improvements


2023-10-16, Version 1.2.1
* New: SpriteEvent event in TRAnimationCanvasCore, allowing sprites in the scene graph to message the parent control for custom events. Currently used by TRAnimationButtonSprite to notify the top-level control when it was tapped.
* Fixed: Issue in TRAnimation stoped animating before serving all queued animations (.NextTargetBehavior array)
* Fixed: Floating point issue in TRTween that prevented animation from completing
* Update: TRAnimationButtonSprite (feature complete; see demo for usage; can also subclass to implement the Pressed event)
* Updated: TRAnimationGroupSprite will capture all pointer events
* Updated: Test harnesses for latest framework changes


2023-10-08, Version 1.2

* New demo: Planets
* New demo harness for iOS
* Major updates across the framework:
	* Delegate methods now contain namespace in names
	* TRAnimationCanvasDelegate interface was expanded to provide more platform abstraction
* New sprite types:
	* TRAnimationGroupScreenSprite (to place items relative to the screen)
	* TRAnimationScreenImageSprite (to place simple images relative to the screen)
	* TRAnimationSpriteTextNumber (to tween a number display)
	* TRAnimationButtonSprite (in progress; not finished yet)
* Bug fixes
	* Cross platform issues
	* Simple error checking (e.g., nil checking)
	* Event (pointer, mouse) issues
* Developed in XOJO 2023 R2
