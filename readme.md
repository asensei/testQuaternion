# Test project to expose an issue with GLKit calling between Swift and Objective C.


## To replicate the issue do the following:

1. Build this project and run tests in xcode : should all pass (both on the simulator and on a device).

2. Build and run tests on the command line using the simulator by using the following command line. (Terminal needs to to be open in the main project folder).

    ```xcodebuild -scheme testQuaternions -sdk iphonesimulator build test```

    This should show a failed test where the quaternion values are wrong (you can look at the command line output to see the differences in values where you'll see something like:

    ```Quaternion:  x:4.48416e-44, y:0.0, z:1.0, w:0.0```

    followed by:

    ```quaternion result : Quaternion description: x:0.000000, y:0.000000, z:1.000000, w:0.000000```

    As you can see the x value for the quaternion is wrong, and this will cause the test to fail.


3. Build and run tests on the command line but this time on a device - you'll need to change the device name to match the one you have plugged in. If you are not sure of the name, look in xcode and use the name that appears next to the scheme.


    ```xcodebuild -scheme testQuaternions -destination "platform=iOS,name=Bill's iPhone 5S" build test```

    This last test should pass, indicating that the code works on a real device but not on the simulator.




