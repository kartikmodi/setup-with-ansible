Addons - 
AutoTab Discard
Bitwarden
ClearURLs
Decentraleyes
DownloadAllImages
Firefox Multi-Account Containers
FoxyProxy Standard
FoxyTab
Grammarly For Firefox
HTTPS Everywhere
IG Downloader
Media Helper for Instagram
OneTab
Plasma Integration
Privacy Pass
Privacy Possum
Pushbullet 
SimpleTab Groups
Sponsor Block Youtube
Tab Session Manager
Temporary Containers
Tree Style Tab
Trocker
uBlock Origin
uGet Integration
Vimium C
Web Archives
Youtube NonStop
Video DownloadHelper with https://www.downloadhelper.net/install-coapp?browser=firefox

Disabled - 
Adblock Plus
Canvas Fingerprint Detector
Cookie Quick Manager
Cookie-Editor
Grammar and Spell Checker - Language Tool
Hola VPN
In My pocket
NewTab Adapter 
Regrets Reporter
Tab Counter
ToGoogle Transalate
TouchVPN
Windscribe
Worldwide Radio


Configuration Changes -

browser.compactmode.show true
browser.aboutConfig.showWarning false
browser.ctrlTab.sortByRecentlyUsed true
browser.tabs.tabMinWidth 50
browser.tabs.drawInTitlebar true
# unavailable now
# browser.tabs.extraDragSpace 
dom.ipc.processCount 8 (2x of logical cores)
dom.webgpu.enabled true
gfx.webrender.all true
gfx.webrender.compositor true
gfx.webrender.compositor.force-enabled true
gfx.webrender.enabled true
layers.acceleration.force-enabled true 
layers.gpu-process.enabled true
layers.gpu-process.force-enabled true
browser.bookmarks.showMobileBookmarks true
media.ffmpeg.vaapi.enabled true
media.gpu-process-decoder true
media.hardware-video-decoding.force-enabled true
toolkit.tabbox.switchByScrolling true
gfx.webrender.precache-shaders true

Needed if whatsapp QR isn't working
# network.http.spdy.websockets

# network.trr.custom_uri https://doh.in.ahadns.net/dns-query

# Don't enable. webgl is old
webgl.force-enabled
webgl.msaa-force

# Disk Cache 
browser.cache.disk.smart_size.enabled false
# 3 GB approx
browser.cache.disk.capacity  3000000
browser.cache.disk.max_chunks_memory_usage 81920 (2x40960 default)
browser.cache.disk.max_entry_size   102400 (2x 51200 default)
browser.cache.disk.max_priority_chunks_memory_usage 81920 (2x40960 default)
browser.cache.disk.metadata_memory_limit 500 (2x 250 default)
browser.cache.disk.preload_chunk_count 8 (2x4 default)

# Usability
dom.event.clipboardevents.enabled false

Reference -


# dma  egl
widget.dmabuf-textures.enabled true
widget.dmabuf.force-enabled true
gfx.x11-egl.force-enabled true

# DNS over https 
# https://ahadns.com/dns-over-https/
https://doh.chi.ahadns.net/dns-query