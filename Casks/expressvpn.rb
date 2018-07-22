cask 'expressvpn' do
  version '6.5.0.1159'
  sha256 '52568866e54311328218dfd9ca8bbcf0714467b13aee1574f26ede418096ee3d'

  # expressvpn.xyz was verified as official when first introduced to the cask
  url "https://download.expressvpn.xyz/clients/mac/expressvpn-install_v#{version}.pkg"
  appcast 'https://www.expressvpn.com/support/release-notes/mac/',
          checkpoint: '95fbfe869c35a9cb771cfe73b24aabcfb8fd51a17f80f11d87b279d6f4bb6393'
  name 'ExpressVPN'
  homepage 'https://www.expressvpn.com/'

  pkg "expressvpn-install_v#{version}.pkg"

  uninstall pkgutil: 'com.expressvpn.ExpressVPN',
            quit:    'com.expressvpn.ExpressVPN'

  zap delete: [
                '~/Library/Application\ Support/com.expressvpn.ExpressVPN',
                '~/Library/Preferences/com.expressvpn.ExpressVPN.plist',
                '~/Library/Caches/com.expressvpn.ExpressVPN',
                '~/Library/Logs/ExpressVPN',
                '~/Documents/ExpressVPN\ Shortcuts',
              ]
end
