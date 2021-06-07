<p align="center">
  <a href="" rel="noopener">
 <img width=100px height=100px src=".github/images/PockKit_logo.png" alt="PockKit logo"></a>
</p>
<h3 align="center">Note</h3>
<p align="center"> A touchbar note widget for <a href="https://github.com/pock/pock"> Pock</a>.
    <br> 
</p>
<p align="center">
  <a href="" rel="noopener">
 <img width=800px src=".github/images/Touchbar.png" alt="PockKit logo"></a>
</p>

---

## About

If you're like me, the reminders app is too many clicks away and easy to still forget.

Using Note, you can type up a short message which will be displayed on your touchbar right above your keyboard. No more forgetting!

## Installing
TBD. For now, use Getting Started below.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This project uses [CocoaPods](https://cocoapods.org/) package manager. You can install it simply using the terminal:

```
sudo gem install cocoapods
```


### Setting Up

Once you've got CocoaPods up and running, the next step is to install the [PockKit](https://github.com/pock/pockkit) pod.

In the same directory as the `Podfile`, run:
```
pod install
```

Finally, open the project using:

```
open pock-note.xcworkspace
```

> Opening the project using the `pock-note.xcodeproj` will fail to compile! You must open `pock-note.xcworkspace`.

### Testing
Drag and drop your compiled `Note.pock` into Pock's widget installer. Pock will ask to reload via touchbar. 

Your Note widget should now be installed and/or updated. 

## Built Using

- [PockKit](https://github.com/pock/pockkit) - Pock API
- [CocoaPods](https://cocoapods.org/) - Package Manager
- [Defaults](https://github.com/dalu93/Defaults) - Preferences Saving

## Authors

- [@zachmerrill](https://github.com/zachmerrill)