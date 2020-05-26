# 💬 Twitch Clone App with Stream Chat and Dolby.io  [![](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2FGetStream%2Ftwitch-example-ios)](https://twitter.com/intent/tweet?text=Want%20to%20build%20an%20app%20similar%20to%20Twitch%20for%20iOS%3F%20Learn%20how%3A&url=https%3A%2F%2Fgithub.com%2FGetStream%2Ftwitch-example-ios)

<img align="right" src="https://dev-to-uploads.s3.amazonaws.com/i/to6nmnsnlftjtel0045d.gif" width="40%" />

## 📚 Tutorial

This repository contains the completed Xcode project following the [How to Build a Twitch Clone Game Live Streaming App for iOS](https://getstream.io/blog/stream-dolby-game-livestreaming-tutorial/) tutorial. You should read it before trying to run this project as it contains it may contain useful information not present in this README.

## ⚙️ Setup

## Requirements
- Xcode 11+
- iOS 13+
- A [Stream](https://getstream.io/accounts/signup/) account
- A [Dolby.io](https://dolby.io/organizations/register) account

### Configuration

You should place your [Stream Chat](https://getstream.io/chat) and [Dolby.io](https://dolby.io) credentials in [`AppDelegate.swift`](Smitch/Smitch/AppDelegate.swift#L18-#L23).

### Dependencies

To install the dependencies, use CocoaPods in the Smitch folder:

```bash
$ pod install --repo-update
```

### Running

Run this sample app as any normal app, but only on real devices. If you run in a simulator, the chat will work, but you won't be able to watch or stream your screen due to limitations of the simulator.

## 🔗 Helpful Links

- [Build an iMessage Clone with The Stream Chat iOS SDK](https://getstream.io/blog/build-imessage-clone/)
- [Stream Chat iOS Tutorial](https://getstream.io/tutorials/ios-chat/)
- [Stream Chat iOS Repo](https://github.com/GetStream/stream-chat-swift)
- [Stream Chat iOS Docs](http://getstream.io/chat/docs?language=swift)
