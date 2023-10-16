# TRAnimation

TRAnimation is a lite, cross-platform sprite animation & interaction framework for XOJO.

This framework is being developed in conjunction with commercial apps to be released by tinrocket.com and capsuleapps.com. One of these apps is Photo Tape:

![Photo Tape by Tinrocket](Data/RPReplay_Final1697486727.gif)

Current limitations:

1) The render model is based on the Graphics class; there is no hardware acceleration. That said, it's fast enough for dozens of animated sprites. TRAnimation could be adapted to another display model if one were implemented in XOJO.

2) TRAnimation is limited to macOS and iOS platforms because of dependency on CGAffineTransform. This dependency will be removed in the future.

XOJO forum announcement and discussion: https://forum.xojo.com/t/new-sprite-2d-scene-graph-interaction-framework/72542/10

![iOS Demo Harness](Data/Simulator_Screen_Recording_-_iPhone_14_Plus_-_2023-10-16_at_15.39.59.gif)

![macOS Demo Harness (Planets)](Data/Screenshot%202023-10-16%20at%203.51.57%20PM.png)
