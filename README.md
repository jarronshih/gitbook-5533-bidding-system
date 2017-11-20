# gitbook-5533-bidding-system
- [Website Vesrion](https://jarronshih.gitbooks.io/5533-bidding-system/content/)
- [Convention Card](http://bridgewinners.com/convention-card/print/jarron-wkc-5533)


## Framework
We use `gitbook` as main framework, use `gitbook-plugin-contractbridge` to help format the suit and bidding sequence.
- [gitbook](https://gitbookio.gitbooks.io/documentation/content/index.html)
- [gitbook-plugin-contractbridge](https://github.com/jarronshih/gitbook-plugin-contractbridge)


## How to Contribute
Please reference to [Contributing Guidelines](CONTRIBUTING.md)

### How to build
```
# Use docker and make to build it
make build
make serve

# Or build from scratch
npm install gitbook-cli
gitbook install .
gitbook serve .
```
