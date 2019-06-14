MillenniumClub Core v0.12.3.8
===============================

`master:` [![Build Status](https://travis-ci.org/millenniumclubpay/millenniumclub.svg?branch=master)](https://travis-ci.org/millenniumclubpay/millenniumclub) `develop:` [![Build Status](https://travis-ci.org/millenniumclubpay/millenniumclub.svg?branch=develop)](https://travis-ci.org/millenniumclubpay/millenniumclub/branches)

https://www.millenniumclub.ca

New in this version
----------------

Source code updated for planned Fork at block: 200,000 where all running masternoedes are de-activated and new Collateral requirements go into effect. You do NOT need to re-index any files for the fork. Insure all of your wallets are updated (linux & windows) before block 200,000.

What is MillenniumClub?
----------------

MillenniumClub is an experimental digital currency that enables anonymous, instant
payments to anyone, anywhere in the world. MillenniumClub uses peer-to-peer technology
to operate with no central authority: managing transactions and issuing money
are carried out collectively by the network. MillenniumClub Core is the name of the open
source software which enables the use of this currency.

License
-------

MillenniumClub Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is meant to be stable. Development is normally done in separate branches.
[Tags](https://github.com/millenniumclub/MillenniumClubCoin) are created to indicate new official,
stable release versions of MillenniumClub Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/qa) of the RPC interface, written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/qa) are installed) with: `qa/pull-tester/rpc-tests.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and OS X, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.
