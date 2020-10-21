c.colors.webpage.darkmode.enabled=True
c.colors.webpage.darkmode.policy.images="smart"
c.colors.webpage.darkmode.policy.page="smart"
c.tabs.position="bottom"
c.url.default_page="https://www.ecosia.org"
c.url.start_pages="https://www.startpage.com"
c.url.searchengines={
                "DEFAULT":"https://duckduckgo.com/?q={}",
                "e" :  "https://www.ecosia.org/search?q={}",
                "s" : "https://www.startpage.com/sp/search/{}",
                "a" : "https://wiki.archlinux.org/index.php?search={}",
                "y" : "https://www.youtube.com/results?search_query={}",
                "m" : "https://www.google.com/maps/search/{}"
                    }
c.scrolling.smooth=True

config.bind('K','tab-next')
config.bind('J','tab-prev')
config.bind(';b','hint all tab')
config.bind('f','hint all tab-bg')
config.bind('F','hint')
config.bind('<Ctrl+K>','open')
