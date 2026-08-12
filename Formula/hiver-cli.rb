class HiverCli < Formula
  desc "AI-native CLI + MCP server for the Hiver HQ shared-inbox REST API"
  homepage "https://github.com/aclemen1/hiverhq-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.2.0/hiver-cli-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "df3e00c6b424c35568f25ff0935fc39140bde4a8121312fc07411eb3524e8e3d"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.2.0/hiver-cli-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "06bdc494ae70f21402f6266d09a8f33aa68ae2e64282c766ac14be407deafdba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.2.0/hiver-cli-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e7e16f79487887f5582d3202a01368540a22d7ba9c9e3426cb34979a096fd3f"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.2.0/hiver-cli-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7eb27524e8da3c6568f18cc636526913ad36db9312249e4014addc73ae117e71"
    end
  end

  def install
    bin.install "hiver"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/hiver version")
  end
end
