# TRAnimation

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