Hundreds
==

Inspired by http://www.wannalol.com/p/85288

Usage
--

```bash
$ bundle install
$ git submodule init
$ bundle exec ruby bin/get_hundreds.rb --help
Usage: hundred [options]
    -f, --file [FILE]                File to take words from
```

We default to the wordlist in the gskinner/SPL (https://github.com/gskinner/SPL) submodule under `words/SPL/wordlists/en_uk/en_uk\ uncompressed.txt`

Output
--

```bash
$ bundle exec ruby bin/get_hundreds.rb | head -10
Words in /Users/jcondron/projects/100-percent/bin/../words/SPL/wordlists/en_uk/en_uk uncompressed.txt which are '100 Percent':
        abatements
        abettor's
        abettors
        acceptor's
        acceptors
        acclimation
        accumulate
        acknowledge
        acolyte's
#SNIP
```

Licence
--

GPLv3. See `LICENCE.txt`

