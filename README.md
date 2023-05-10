# osx-ipe
Build the dependencies for Ipe on Mac OS.

## Building for Intel

From *Actions*, select *Build dependencies for Ipe on MacOS*, then *Run workflow*.
All libraries are built and appear as the artifact of the workflow.

## Building for ARM

Connect to a Mac Mini with M1 or M2 processor.

Install homebrew using
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
```

We actually only need `pkg-config` from homebrew, but it also makes sure all the command line tools are available.

Clone this repository:
```
git clone https://github.com/otfried/osx-ipe.git
```

Select the right target, e.g.
```
export OSXTARGET=-mmacosx-version-min=11.00 -target arm64-apple-macos11
```

Then compile all libraries one by one:
```
make setup
make libpng
make freetype
make pixman
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
