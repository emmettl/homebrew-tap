# emmettl/homebrew-tap

Homebrew casks for [BombCAD](https://github.com/emmettl/bombcad) and [Hello Mini](https://hellomini.app).

```bash
brew install emmettl/tap/bombcad
```

This installs `BombCAD.app` into Applications and links the app's headless runner as
`bombcad` (`bombcad run …`; see the BombCAD docs, "Run comparison"). Apple silicon, macOS 15
or later. The cask is updated after each BombCAD release by `Scripts/update-homebrew-tap.py` in
the BombCAD repository.

## Hello Mini

```bash
brew install --cask emmettl/tap/hellomini
```

Installs the signed, notarized `Hello Mini.app` into Applications. Requires Apple silicon
and macOS 26 (Tahoe) or later. Update with `brew update` followed by
`brew upgrade --cask emmettl/tap/hellomini`. Uninstall retains saved data and Keychain tokens.
The cask is updated after each stable release by `scripts/update-homebrew-tap.py` in the
[Hello Mini repository](https://github.com/emmettl/hellomini/blob/main/docs/RELEASING.md).
