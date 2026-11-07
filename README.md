# onekapisch/homebrew-tap

Homebrew casks for [OneKapisch](https://www.onekapisch.com) apps.

```sh
brew tap onekapisch/tap
brew trust onekapisch/tap
brew install --cask onekapisch/tap/<cask>
```

Homebrew 7 and later only load casks from third-party taps you have trusted, so run `brew tap` and `brew trust` once. After that, each app is a single `brew install --cask` line.

| Cask | App | Install |
|---|---|---|
| `mac-4-breakfast` | [Mac 4 Breakfast](https://www.mac4breakfast.app): menu bar battery health monitor for Mac, iPhone, iPad and AirPods | `brew install --cask onekapisch/tap/mac-4-breakfast` |
| `tokens-4-breakfast` | [Tokens 4 Breakfast](https://www.tokens4breakfast.app): menu bar tracker for AI spend, token usage and rate limits | `brew install --cask onekapisch/tap/tokens-4-breakfast` |
| `clip-4-breakfast` | [Clip 4 Breakfast](https://clip4breakfast.app): clipboard history with Keepers, paste stacks and framed screenshots | `brew install --cask onekapisch/tap/clip-4-breakfast` |
| `easy-write` | [Easy Write](https://www.onekapisch.com/products/easy-write/): translate and rewrite selected text with on-device Apple Intelligence (macOS 26+, Apple silicon) | `brew install --cask onekapisch/tap/easy-write` |
| `chime-4-breakfast` | [Chime 4 Breakfast](https://www.onekapisch.com/products/chime-4-breakfast/): a sound, glow or banner when a Codex or Claude Desktop response finishes | `brew install --cask onekapisch/tap/chime-4-breakfast` |
| `minimizer` | [Minimizer](https://www.onekapisch.com/products/minimizer/): minimize all normal windows with one hotkey and restore them later | `brew install --cask onekapisch/tap/minimizer` |

Uninstall, including app data: `brew uninstall --zap --cask onekapisch/tap/<cask>`.

Mac 4 Breakfast, Tokens 4 Breakfast, Clip 4 Breakfast and Easy Write update themselves (Sparkle), so `brew upgrade` is not needed for them. Chime 4 Breakfast and Minimizer have no built-in updater: use `brew upgrade --cask` when a new release ships.

LUMEL is distributed through the Mac App Store only, so it has no cask.
