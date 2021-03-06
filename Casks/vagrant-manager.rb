cask 'vagrant-manager' do
  version '2.6.0'
  sha256 'ed9ad3f1b6a97e82c959812b0779036946903630627914b02684d53ad71b1052'

  # github.com/lanayotech/vagrant-manager was verified as official when first introduced to the cask
  url "https://github.com/lanayotech/vagrant-manager/releases/download/#{version}/vagrant-manager-#{version}.dmg"
  appcast 'https://github.com/lanayotech/vagrant-manager/releases.atom'
  name 'Vagrant Manager'
  homepage 'http://vagrantmanager.com/'

  app 'Vagrant Manager.app'

  uninstall login_item: 'Vagrant Manager',
            quit:       'lanayo.Vagrant-Manager'

  zap trash: [
               '~/Library/Caches/lanayo.Vagrant-Manager',
               '~/Library/Preferences/lanayo.Vagrant-Manager.plist',
             ]
end
