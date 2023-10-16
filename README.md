# TRAnimation

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


[title](Docs/Simulator%20Screen%20Recording%20-%20iPhone%2014%20Plus%20-%202023-10-16%20at%2015.39.59.mp4)