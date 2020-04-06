# Hello Who?

A Flutter application that demonstrates the following concepts:

- An application-level state object
- that's also a `ChangeNotifier`
- a top-level `ChangeNotifierProvider`
- and a `Consumer` at the lowest level

### Background

I needed a way to be able to show something at an earlier screen, but that would change depending on some user action in a later/deeper screen.

Along the way I also demonstrate writing a custom `RoundedButton` component, and a template for Flutter project organisation (`/components`, `/models`, `/screens`).