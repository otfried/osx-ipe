# osx-ipe
Build the dependencies for Ipe on Mac OS.

## Building for Intel

From *Actions*, select *Build dependencies for Ipe on MacOS*, then *Run workflow*.
All libraries are built and appear as the artifact of the workflow.

## Building for ARM

On a MacOS computer with Apple silicon, install homebrew using
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Add to your path and install `pkg-config` and `meson` using homebrew:
```
export PATH="$PATH:/opt/homebrew/bin"
brew update
brew install pkg-config
brew install meson
```

Clone this repository:
```
git clone https://github.com/otfried/osx-ipe.git
```

Select the right target, e.g.
```
export OSXTARGET="-mmacosx-version-min=11.00 -target arm64-apple-macos11"
```

Then compile all libraries one by one:
```
make setup
make libpng
make freetype
make cairo
make lua
make spiro
make qhull
make gsl
```

Archive the libraries and store them safely.
```
tar czvf osxlibs-arm.tar.gz osxlibs
```
