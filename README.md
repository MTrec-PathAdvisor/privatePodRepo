# privatePodRepo

# Part 1 Pod configuration
To use our LBSOfflineSDK pod, you have to configure podfile first, make sure you have installed Cocoapods

execute `Pod init` in your project directory, then open Podfile and edit according to instructions

1. add two PodRepo source
  source ‘https://github.com/Mtrec-PathAdvisor/privatePodRepo.git’
  source ‘https://github.com/CocoaPods/Spec.git’
2. under your project  target, add `use_frameworks !`
3. also add ` pod ‘Mtrec-IOS-LBSOfflineSDK’, ‘~> 0.0.6’ #version number`

after podfile finished, execute command `Pod install`
____________________________________________________________
# Part 2 code implementation
in classes that you want to use SDK, edit accordingly.

for CLASS.h
1. add header
    #import <LBSOfflineSDK/LBSOfflineSDK.h>
2. configure delegate
    put <LocationEngineDelegate> in your class interface 
    e.g. : @interface Wherami: NSObject<LocationEngineDelegate>

for CLASS.m
1. initialization of engine

    `[LocationEngine engine];`
    
    `[[LocationEngine engine] setDelegate:self];`
    
    `[[LocationEngine engine] authorityNotify:self];`
    

2. implement delegate function

    -(void)didUpdateLocation:(HistoryCaled *)history{
      if ( !history ) {
          return;
      }else{
         //do sth with history value
      }
    }
    //history is the last returned location from engine, consist of a location(CGPoint, x,y coordinate from our map),
    //a level(NSString, floor id of your position) and a timestamp(long long, time when the location is calculated,
    //please refer to NSDate timeIntervalSince1970)

3. start engine
  `[[LocationEngine engine] turnOnPosition];`

4. stop engine
  `[[LocationEngine engine] turnOffPosition];`


Finally, remember to:
1. add “Location updates” in “Signing&Capabilities>Background Modes” of your app target
2. add “Privacy - Location When in Use Usage Description” in your info.plist 
