var PROXY_LIST = {
    "50.22.206.179:8080": [
        "2ip.ru",
        "pandora.com",
        "nnm-club.me",
        "rutracker.org",
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
