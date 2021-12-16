library(shiny)
library(shinyChakraUI)

js <- function(icon){
  sprintf(
    "() => {
      setState(\'icon\', \'%s\' + \'TinyIcon\');
      getHookProperty(\'disclosure\', \'onOpen\')();
    }",
  icon
  )
}

ui <- chakraPage(

  chakraComponent(
    "mycomponent",

    Tag$WomanIonIcon(boxSize=100),

    withStates(
      Tag$Fragment(

        Tag$Modal(
          isOpen = getHookProperty("disclosure", "isOpen"),
          onClose = getHookProperty("disclosure", "onClose"),
          Tag$ModalOverlay(),
          Tag$ModalContent(
            Tag$ModalHeader(
              getState("icon")
            ),
            Tag$ModalCloseButton(),
            Tag$ModalBody(
              getState("elem")
            ),
            Tag$ModalFooter(
              Tag$Button(
                colorScheme = "blue", mr = 3,
                onClick = getHookProperty("disclosure", "onClose"),
                "Close"
              )
            )
          )
        ),

        Tag$SimpleGrid(
          columns = 6,
          spacingX = "20px",
          spacingY = "20px",
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Acast")),
            "Acast"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Access")),
            "Access"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Adobe")),
            "Adobe"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Airbnb")),
            "Airbnb"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Amazon")),
            "Amazon"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Amazon_alexa")),
            "Amazon_alexa"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Amazon_s3")),
            "Amazon_s3"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Amberframework")),
            "Amberframework"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Andotp")),
            "Andotp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Android")),
            "Android"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Angellist")),
            "Angellist"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Angular")),
            "Angular"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ansible")),
            "Ansible"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Apereo")),
            "Apereo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Apple")),
            "Apple"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Apple_music")),
            "Apple_music"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Arch_linux")),
            "Arch_linux"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Auth0")),
            "Auth0"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Authy")),
            "Authy"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Backbone")),
            "Backbone"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Badoo")),
            "Badoo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Baidu")),
            "Baidu"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bandcamp")),
            "Bandcamp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Behance")),
            "Behance"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bing")),
            "Bing"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bitbucket")),
            "Bitbucket"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bitcoin")),
            "Bitcoin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bitwarden")),
            "Bitwarden"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Blogger")),
            "Blogger"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bluetooth")),
            "Bluetooth"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Brave")),
            "Brave"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Briar")),
            "Briar"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Buffer")),
            "Buffer"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Bugcrowd")),
            "Bugcrowd"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Calendar")),
            "Calendar"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Centos")),
            "Centos"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Chrome")),
            "Chrome"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Chromium")),
            "Chromium"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Citrix")),
            "Citrix"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Citrix_compact")),
            "Citrix_compact"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Clojure")),
            "Clojure"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Cloudflare")),
            "Cloudflare"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Codeberg")),
            "Codeberg"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Codepen")),
            "Codepen"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Coffeescript")),
            "Coffeescript"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Coil")),
            "Coil"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Coinpot")),
            "Coinpot"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Colaboratory")),
            "Colaboratory"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Cplusplus")),
            "Cplusplus"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Crystal")),
            "Crystal"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Css3")),
            "Css3"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Dart")),
            "Dart"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Datacamp")),
            "Datacamp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Debian")),
            "Debian"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Deezer")),
            "Deezer"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Delicious")),
            "Delicious"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Dev_to")),
            "Dev_to"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Digidentity")),
            "Digidentity"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Digitalocean")),
            "Digitalocean"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Discord")),
            "Discord"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Disqus")),
            "Disqus"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Djangoproject")),
            "Djangoproject"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Docker")),
            "Docker"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Dribbble")),
            "Dribbble"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Drone")),
            "Drone"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Dropbox")),
            "Dropbox"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Drupal")),
            "Drupal"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Duckduckgo")),
            "Duckduckgo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ea")),
            "Ea"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ebay")),
            "Ebay"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Edge")),
            "Edge"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Elastic")),
            "Elastic"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Element")),
            "Element"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Elementaryos")),
            "Elementaryos"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Email")),
            "Email"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Epub")),
            "Epub"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Espressif")),
            "Espressif"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ethereum")),
            "Ethereum"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Etsy")),
            "Etsy"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Evernote")),
            "Evernote"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Facebook")),
            "Facebook"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Finder")),
            "Finder"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Firefox")),
            "Firefox"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Flattr")),
            "Flattr"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Flickr")),
            "Flickr"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Flutter")),
            "Flutter"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Foobar2000")),
            "Foobar2000"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Freebsd")),
            "Freebsd"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Freecodecamp")),
            "Freecodecamp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Friendica")),
            "Friendica"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Fritz")),
            "Fritz"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gandi")),
            "Gandi"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gatehub")),
            "Gatehub"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ghost")),
            "Ghost"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Git")),
            "Git"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gitea")),
            "Gitea"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Github")),
            "Github"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gitlab")),
            "Gitlab"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Glitch")),
            "Glitch"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gmail")),
            "Gmail"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gmail_old")),
            "Gmail_old"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Go")),
            "Go"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gogcom")),
            "Gogcom"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gojek")),
            "Gojek"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Goodreads")),
            "Goodreads"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google")),
            "Google"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_calendar")),
            "Google_calendar"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_collaborative_content_tools")),
            "Google_collaborative_content_tools"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_docs_editors")),
            "Google_docs_editors"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_drive")),
            "Google_drive"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_drive_old")),
            "Google_drive_old"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_maps")),
            "Google_maps"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_maps_old")),
            "Google_maps_old"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_meet")),
            "Google_meet"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_play")),
            "Google_play"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_plus")),
            "Google_plus"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_podcasts")),
            "Google_podcasts"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Google_scholar")),
            "Google_scholar"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Gradle")),
            "Gradle"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Grafana")),
            "Grafana"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Guacamole")),
            "Guacamole"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Guilded")),
            "Guilded"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Hackernews")),
            "Hackernews"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Hackerone")),
            "Hackerone"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Haml")),
            "Haml"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Heroku")),
            "Heroku"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Homekit")),
            "Homekit"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Hp")),
            "Hp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Html5")),
            "Html5"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Hulu")),
            "Hulu"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Humblebundle")),
            "Humblebundle"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("I18next")),
            "I18next"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ibm")),
            "Ibm"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Iheartradio")),
            "Iheartradio"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Imdb")),
            "Imdb"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Imgur")),
            "Imgur"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Instagram")),
            "Instagram"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Intel")),
            "Intel"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Intercom")),
            "Intercom"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Internet_archive")),
            "Internet_archive"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Itch_io")),
            "Itch_io"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Itunes_podcasts")),
            "Itunes_podcasts"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Jacobin")),
            "Jacobin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Java")),
            "Java"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Javascript")),
            "Javascript"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Jellyfin")),
            "Jellyfin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Json")),
            "Json"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Julia")),
            "Julia"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Kaggle")),
            "Kaggle"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Keepassdx")),
            "Keepassdx"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Kemal")),
            "Kemal"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Keskonfai")),
            "Keskonfai"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Keybase")),
            "Keybase"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Kickstarter")),
            "Kickstarter"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ko-Fi")),
            "Ko-Fi"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Kodi")),
            "Kodi"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Kotlin")),
            "Kotlin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Laravel")),
            "Laravel"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Lastpass")),
            "Lastpass"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Liberapay")),
            "Liberapay"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Line")),
            "Line"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Linkedin")),
            "Linkedin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Linux")),
            "Linux"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Linux_mint")),
            "Linux_mint"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Lobsters")),
            "Lobsters"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Lock")),
            "Lock"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Logitech")),
            "Logitech"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Luckyframework")),
            "Luckyframework"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Macos")),
            "Macos"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Mail")),
            "Mail"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Mailchimp")),
            "Mailchimp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Malt")),
            "Malt"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Manjaro")),
            "Manjaro"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Markdown")),
            "Markdown"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Mastodon")),
            "Mastodon"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Mattermost")),
            "Mattermost"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Medium")),
            "Medium"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Meetup")),
            "Meetup"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Messenger")),
            "Messenger"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Microformats")),
            "Microformats"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Microsoft")),
            "Microsoft"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Minecraft")),
            "Minecraft"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Netflix")),
            "Netflix"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Nextcloud")),
            "Nextcloud"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Nhs")),
            "Nhs"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Npm")),
            "Npm"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ok")),
            "Ok"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Olympics")),
            "Olympics"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Openbenches")),
            "Openbenches"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Openbugbounty")),
            "Openbugbounty"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Opencast")),
            "Opencast"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Opencollective")),
            "Opencollective"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Opencores")),
            "Opencores"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Opensource")),
            "Opensource"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Openvpn")),
            "Openvpn"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Opera")),
            "Opera"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Orcid")),
            "Orcid"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Origin")),
            "Origin"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Outlook")),
            "Outlook"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Overcast")),
            "Overcast"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Overleaf")),
            "Overleaf"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Patreon")),
            "Patreon"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Paypal")),
            "Paypal"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pdf")),
            "Pdf"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Phone")),
            "Phone"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Php")),
            "Php"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pinboard")),
            "Pinboard"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pinterest")),
            "Pinterest"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pixelfed")),
            "Pixelfed"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Plex")),
            "Plex"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pocket")),
            "Pocket"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pocketcasts")),
            "Pocketcasts"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Pornhub")),
            "Pornhub"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Preact")),
            "Preact"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Print")),
            "Print"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Protonmail")),
            "Protonmail"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Python")),
            "Python"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Qq")),
            "Qq"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Quora")),
            "Quora"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Raspberry_pi")),
            "Raspberry_pi"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("React")),
            "React"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Reddit")),
            "Reddit"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Redhat")),
            "Redhat"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Researchgate")),
            "Researchgate"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Roundcube")),
            "Roundcube"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Rss")),
            "Rss"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ruby")),
            "Ruby"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Rubygems")),
            "Rubygems"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Rubyonrails")),
            "Rubyonrails"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Rust")),
            "Rust"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Safari")),
            "Safari"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Samsung")),
            "Samsung"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Samsung_internet")),
            "Samsung_internet"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Samsung_s")),
            "Samsung_s"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Samsung_swoop")),
            "Samsung_swoop"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Sass")),
            "Sass"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Semaphoreci")),
            "Semaphoreci"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Sentry")),
            "Sentry"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Signal")),
            "Signal"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Sketch")),
            "Sketch"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Skype")),
            "Skype"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Slack")),
            "Slack"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Slideshare")),
            "Slideshare"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Snapchat")),
            "Snapchat"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Sogo")),
            "Sogo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Soundcloud")),
            "Soundcloud"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Spotify")),
            "Spotify"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Square_cash")),
            "Square_cash"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Stackexchange")),
            "Stackexchange"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Stackoverflow")),
            "Stackoverflow"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Steam")),
            "Steam"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Stitcher")),
            "Stitcher"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Strava")),
            "Strava"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Stumbleupon")),
            "Stumbleupon"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Sublimetext")),
            "Sublimetext"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Subscribestar")),
            "Subscribestar"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Svelte")),
            "Svelte"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Svg")),
            "Svg"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Symantec")),
            "Symantec"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Taiga")),
            "Taiga"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Teamspeak")),
            "Teamspeak"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Telegram")),
            "Telegram"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Terraform")),
            "Terraform"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Thisamericanlife")),
            "Thisamericanlife"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Threema")),
            "Threema"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tiktok")),
            "Tiktok"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Todoist")),
            "Todoist"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tox")),
            "Tox"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Trello")),
            "Trello"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tripadvisor")),
            "Tripadvisor"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tumblr")),
            "Tumblr"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tunein")),
            "Tunein"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Tutanota")),
            "Tutanota"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Twilio")),
            "Twilio"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Twitch")),
            "Twitch"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Twitter")),
            "Twitter"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Typescript")),
            "Typescript"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Uber")),
            "Uber"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ubiquiti")),
            "Ubiquiti"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ubisoft")),
            "Ubisoft"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Ubuntu")),
            "Ubuntu"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Udemy")),
            "Udemy"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Unicode")),
            "Unicode"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Untappd")),
            "Untappd"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Uphold")),
            "Uphold"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Uplay")),
            "Uplay"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Upwork")),
            "Upwork"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vegetarian")),
            "Vegetarian"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Venmo")),
            "Venmo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Viber")),
            "Viber"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vimeo")),
            "Vimeo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Visualstudiocode")),
            "Visualstudiocode"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vivino")),
            "Vivino"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vk")),
            "Vk"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vlc")),
            "Vlc"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Vue")),
            "Vue"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("W3c")),
            "W3c"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Webassembly")),
            "Webassembly"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wechat")),
            "Wechat"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wekan")),
            "Wekan"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Whatsapp")),
            "Whatsapp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Whatwg")),
            "Whatwg"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wifi")),
            "Wifi"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wikipedia")),
            "Wikipedia"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Windows")),
            "Windows"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wire")),
            "Wire"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wireguard")),
            "Wireguard"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Wordpress")),
            "Wordpress"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Workato")),
            "Workato"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Xing")),
            "Xing"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Xmpp")),
            "Xmpp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Yahoo")),
            "Yahoo"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Yammer")),
            "Yammer"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Yarn")),
            "Yarn"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Yelp")),
            "Yelp"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Youtube")),
            "Youtube"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Yubico")),
            "Yubico"
          ),
          Tag$Button(
            variant = "solid", size = "xs", colorScheme = "pink",
            onClick = jseval(js("Zoom")),
            "Zoom"
          )
        )

      ),
      states = list(
        icon = "PdfTinyIcon",
        disclosure = useDisclosure(),
        elem = jseval(
          "React.createElement(eval(getState('icon')), {boxSize: 100})"
        )
      )
    )
  )
)

server <- function(input, output){

}

shinyApp(ui, server)
