# Simple horizontal tabs w/ VIPER base

## Misssion 
__Modular - Tabs (Horizontal CollectionView) to use in your project.__

## Supported features
__This repo can be used as an example for__

| Feature                        | Supported | Note                                            |
| ------------------------------ | --------- | ----------------------------------------------- |
| VIPER architecture             | Yes       |                                                 |
| Horizontal scroller            | Yes       |                                                 |


## Installation
### Carthage
- Coming soon!

### Pods
- Coming soon!

### Manual
#1

* __Drag & drop the Modules folder into your project__
* __Give connections for TabView from nib to your VC__
* __Declare the presenter__

```swift
// Setup the Tabs.
 override func viewDidLoad() {
	 presenter?.updateView()
 }
```
#2
* __Extend PresenterToViewProtocol__

```swift
// Setup the Data.
 func showData() {
        tabView.dataArray = [String]//Format required
 }
```

#3
* __Extend TabDelegate__

```swift
// Selection
func tabSelected(menu: HorizontalTabsView, index: Int) {
	//Callback for selection!
}
```

## My Tasklist
- [x] Finish my changes
- [ ] Push my commits to GitHub
- [ ] Open a pull request
- [ ] Create Pod
- [ ] Publish Pod

## Credits & Thanks
- ✅ https://medium.com/swift-india/android-like-tabs-in-ios-sliding-tabs-segments-4dc38d801463
- ✅ https://theswiftdev.com/2018/03/12/the-ultimate-viper-architecture-tutorial/



