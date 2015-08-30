require 'formula'

HOMEBREW_LICENSE_VERSION='0.1'
class License < Formula
  homepage 'https://github.com/upamune/license'
  url 'https://github.com/upamune/license.git', :tag => "v#{HOMEBREW_LICENSE_VERSION}"
  version HOMEBREW_LICENSE_VERSION
  head 'https://github.com/upamune/license.git', :branch => 'master'

  def install
    system 'curl','-L','-o','license',"https://github.com/upamune/license/releases/download/v#{HOMEBREW_LICENSE_VERSION}/license_darwin_amd64"
    bin.install 'license'
  end
end
