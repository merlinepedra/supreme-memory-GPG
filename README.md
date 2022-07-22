# supreme-memory-GPG

A GPG helper. you will still need to enter your password manually. 


### Importing keys
```bash
function import_gpg {
        out=$(echo "$1"  | gpg2 --import)
}
```
Example useage:

```bash
bash import_key.sh "-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2

mQENBGBJSBgBCADfhA4/ENydXa6j4ynJFMKBdUgc+St01LcmgYAo1Ku0bwdjySGt
OibIYONFHA+Cl+tJufcuo+2+RMi4pQj9nSqt6a3DVyFuZEq+rDYvKqDGr72jXqNQ
Ngig5sSHuXC8saNZ16+hrxriA2xu2+93KDvnyRgC/me914X+fdu4sLbejdsp7V3k
tGGwiOPfUz/pWpvhuveQjWkE26Fw+v5tfr0Ey8KjQXB+Pgpp4qRVs2QW56ZeffTr
7CSCae4dsPBFP4FZtVPij3vm5b+GGdC+XBLNvjaj2fGAQeqGaRNoR6lzr8y6h0do
Qtcgly8N1rogCGNFGoOFgQuIWdkhElbiBJV7ABEBAAG0KUZyZWVkb20gaXMgZnJl
ZSA8ZnJlZWRvbWlzZnJlZUBnbWFpbC5jb20+iQE3BBMBCAAhBQJgSUgYAhsDBQsJ
CAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEBwpnzWrtfC+FXkH/RFP35ufv2KjHd83
d89HqMenu21XRJGfjdIUm4yxjIRfaHG0Ytzb+iDO/dBaTy8jQdIqNLvvdaWh2Vjr
5BjDNAjQAZM0yIYbA2pWINt9SPSF7QsTKe0YQPYMWrdpUoaHd7IaJJ5MDHpQOXk8
f7sWgmFfrQC6OvlPfMLH5sojOUccNQfJDgV/hT2wrxzRkUg+V+fUAg4Ne6LBrb/e
wLLt4lZKLiqmquhvdSQlqhOLPOlpp0Sof1RbuK64lBueKmT1c9e39PJAnfwABpNv
PIYr4NEL2mKeqPG/UWJBTkY6Zs8hj8csosf4IsoWT4u1HPjsTn30v4Wai4QpOjkW
XN85o3i5AQ0EYElIGAEIALikoMHhV0Y+MlFItiY+WE21qxJV9BaHHW84zw9B0bmL
4zRAEwm8ZWQcn2meBlePOb4AN3VxvUAlRk2RI9/5xxAhEgezfQbHUfn5WzuwHvWZ
8UUvQ2wNBC7KTQ9cLsAKJelbh0q1+mOR0gVWvAiUDHVXxyLr+ZGvZh+BmYHunbsN
OIgdsSaZBhw+jK1c+1GOGzZlcWm/fPl+NHnFebElfif03arhrIYvnziLLIphDJ0e
2t7j8wv6oOlBp83wpg7yG+UU90x/mYGZPZVXVI+oydRsdpMm//bs60s1Wg19d3WZ
YAOWG9oSRKbLoaDi07Kj0PVEeWhDIpC9fuvM5lQ13m0AEQEAAYkBHwQYAQgACQUC
YElIGAIbDAAKCRAcKZ81q7Xwvn6zCADQEQ6YMQkEaILWTVZVwjCNnac3uE3Vok5s
th3+RJHXQ6mFtxzQphElkOuquzfGH2mQEGd1qWQsf85zZESMKp0lk4/P6q+uyAlw
P1Ga0UbZZaGaC6tToKL6TyaPI7SvshN7xMPEc8toU3LnlgfkwVaF8TrULQLwWnhj
/l4T8DF328MtvXZ3hYTEr2DulchGbduv/NBQjdPedxkQmR4YAfwRsjTYHOkI4Ewn
AREi/8rI0Vt5y2pkB+/uT14uXTTXaPM838jEqqvCn46w3cmnn5ArGY90d/bHeWdq
Y/MAfHbPcMgnRHVEWhXHvVQCVyPrwPUSHUKuPjgNvPwWhdgAAezn
=91td
-----END PGP PUBLIC KEY BLOCK-----" 
```


### Decrypt Messages
```bash
function decrypt {
        out=$(echo "$1" |  gpg2 -d)
}

decrypt "$1 "
```
Example usage:
```bash
bash decrypt.sh  "BLAH BLAH"
```



### Find keys
```bash
function find_key {
        out=$( gpg2 --list-keys "$1")
        echo "$out"
}

find_key "$1"
```

Example usage:
```bash
bash find_key.sh "tom"
```