# homework: port scanner

Goal:

Write a command-line TCP port scanner that probes IP addresses for open TCP ports. Your program should be buildable and testable with make using repository Makefile supplied.

# Minimum requirements
Language: any.
But we must be able to build your source code on the server by typing "make" and run it by typing "make test".
Do not think you have submitted if you haven't tested how it works on the server.

1. Accept a list of targets and a range of ports to scan.
2. For each target: attempt a TCP connection to each specified port and report open ports.
3. Output format: one line per open port, example:
```
192.168.1.42:22 open
192.168.1.42:80 open
192.168.1.42:443 open

```
4. Muts implement `--help`/`-h` showing usage.
5. The repository must include a Makefile.
Extras(optional, bonus):

* Concurrency. In case you use it, then it is even better if you have an option to configure number of threads).
* Configurable timeout.
* Service name lookup (possibly by using /etc/services) (eg translate 22->ssh).
* UDP scanning mode.

# Recommended argument standar (POSIX-like)
```
./port-scanner [OPTIONS] -t <targets> -p <ports>
```

Options:

* `-t, --targets <spec>` - targets specification
Allowed forms:
** Single IP: `192.168.1.42`
** IP range (dash): `192.168.1.1-192.168.1.255` (inclusive).

Optional, but very desirable: instead of IP one could use hostname.

* `-p, --ports <spec>` - port specification.
** Single port: `22`
** Range: `1-1024`

Optional: in case you have concurrency, you can use:

* `-j, --jobs <n>` - concurrency (max simultaneous connect attempts).

* `-w, --timeout <ms>` - connection timeout in milliseconds.



