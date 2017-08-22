<!-- TOC -->

- [Autoinstall Jekyll for windows](#autoinstall-jekyll-for-windows)
- [NOTE](#note)
- [Resources](#resources)

<!-- /TOC -->
## Autoinstall Jekyll for windows

```
git clone https://github.com/KeJunMao/fastjekyll.git
```

click `install.bat`

enjoy!

## NOTE

If you do not want to clone this repository, you can install it in the following manner:

1. Make sure **Powershell 3+**(run `$PSVersionTable` check you Powershell Version) is installed, then run:

    ```bash
    iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
    ```
    if you get an error you might need to change the execution policy (i.e. enable Powershell) with `Set-ExecutionPolicy RemoteSigned -scope CurrentUser`

2. Install Ruby via scoop:
    ```bash
    scoop install ruby
    ```
3. Install jekyll and bundle gems:
    ```bash
    gem install jekyll bundler
    ```
4. Check if Jekyll installed properly: 
    ```
    jekyll -v
    ```
5. Create a new Jekyll site at ./myblog
    ```bash
    jekyll new myblog
    cd myblog
    bundle install
    ```

6. Build the site on the preview server
    ```
    bundle exec jekyll serve
    ```

7. Now browse to http://localhost:4000

## Resources

* [RubyInstaller](https://rubyinstaller.org/)
* [Scoop](http://scoop.sh/)
* [scoop/bucket/ruby.json](https://github.com/lukesampson/scoop/blob/master/bucket/ruby.json)
