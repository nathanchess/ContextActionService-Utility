# Context Action Service Utility

A easy to use module to quickly re-bind context action services and set input modes.

(Credits: Fully created by scasting)


## Sub-Module Overview

`Verifier`: Contains different input types, which are in charge of filtering context action service.

`Config`: Configure your binds here.

`BindActions`: Functions called after input has passed `Verifier` checks.

## Installing Utility

1. Place the module within your `ReplicatedStorage` 

 ![Capture](https://user-images.githubusercontent.com/59159552/158519515-87da49d5-90e0-40a0-9049-0e400a64d581.PNG)

 Note: Your replicated storage does **not** have to utilize these folders. 

2. Create a new local script. (Does not have to be in `StarterPlayerScripts`)

 ![Capture](https://user-images.githubusercontent.com/59159552/158519737-3d6eece2-45fc-48bb-b156-756569991f6b.PNG)

3. Inside your script, require the module and call the .QuickBind() function to initialize all input binds!

 ![Capture](https://user-images.githubusercontent.com/59159552/158519857-b6a2c345-c013-4eed-8144-62e502061859.PNG)

4. Finished! Now go and configure your `Config` module to personalize the utility.

----

## Configuring Binds

### InputType

1. KeyRelease: Fired when key is released. 

Parameters: (None)

2. KeyTapped: Fired when key is initially tapped.

Parameters: (None)

3. TimedHold: Fired when key is released and passes the time key was held as param. 

Parameters: (TimeHeld)

---

### Priority

Self-explanatory. Will override any context binds with lower priority, if they are binded to the same key.

---

### Key

Key to be binded to. 

`Example: Enum.KeyCode.E, Enum.UserInputType.MouseButton1`
