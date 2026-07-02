class HiverCli < Formula
  desc "AI-native CLI + MCP server for the Hiver HQ shared-inbox REST API"
  homepage "https://github.com/aclemen1/hiverhq-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.1.0/hiver-cli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7fc657489a5302fa6cfbeae79ae411457992b8d73fa501bf4dbd37817489e161"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.1.0/hiver-cli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "3bf1483e6ded78793376b9ce58d3fe4bf9aab64975397734825d9ec1fda02d86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.1.0/hiver-cli-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8204d59be9b1addc59117139676582b49684535e90a0231f1dde7528d74d44a3"
    end
    on_intel do
      url "https://github.com/aclemen1/hiverhq-cli/releases/download/v0.1.0/hiver-cli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfc07961f21f5cbf0ce0e472f1d4871c946c97004796cbb212607741fe664754"
    end
  end

  def install
    bin.install "hiver"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/hiver version")
  end
end
