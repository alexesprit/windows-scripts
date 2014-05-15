var PROXY_LIST = {
    "192.3.25.99:7808": [
        "2ip.ru",
        "pandora.com",
        "nnm-club.me",
        "rutor.org",
    ],
};

function FindProxyForURL(url, host) {
    for (proxy in PROXY_LIST) {
        var hosts = PROXY_LIST[proxy]
        for (i = 0; i < hosts.length; ++i) {
            if (dnsDomainIs(host, hosts[i])) {
                return "PROXY " + proxy;
            }
        }
    }
    return "DIRECT";
}
