# TRAnimation

TRAnimation is a lite, cross-platform sprite animation & interaction framework for XOJO.

This framework is being developed in conjunction with commercial app development by tinrocket.com and capsuleapps.com. One of these apps is (Photo Tape)[https://www.tinrocket.com/apps/photo-tape/]. 

![Photo Tape by Tinrocket](Data/General_2_v009_App_Preview.gif)

The render model is based on the Graphics class; where there is no hardware acceleration. TRAnimation includes a delegate class to use another rendering system, such as Apple's SceneKit, and the repo contains a sample project which uses the (SceneKitMBS)[https://www.monkeybreadsoftware.de/xojo/plugin-mac64bit.shtml] plugin from (Monkeybread Software)[https://www.monkeybreadsoftware.com].

### Current limitations

1) TRAnimation is limited to macOS and iOS platforms because of dependency on CGAffineTransform. This dependency will be removed in the future.

### Gallery

![iOS Demo Harness](Data/Simulator_Screen_Recording_-_iPhone_14_Plus_-_2023-10-16_at_15.39.59.gif)

![macOS Demo Harness (Planets)](Data/Screenshot%202023-10-16%20at%203.51.57%20PM.png)

### Discussion

XOJO forum announcement and discussion: https://forum.xojo.com/t/new-sprite-2d-scene-graph-interaction-framework/72542/10