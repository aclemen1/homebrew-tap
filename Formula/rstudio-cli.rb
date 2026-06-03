class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.0/rstudio-cli-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "acf608baf8ed9e352f01cd8a158c6573d832f3e605b51c324cc5804819ad5171"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.0/rstudio-cli-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca7236c04e62ffd0357bbfa0cb36bff1f57cc0cb9906e2c594aad2da3ef6398e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.0/rstudio-cli-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edcc187a192d288d0c527411b6d0a5671ba981ea1cec6e0795350627d5e29936"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.18.0/rstudio-cli-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ec0bcdcbc9837c0c76b64d4d16c0687156ed94dab4acb3d588a8ebbee1c66f9"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/rstudio version")
  end
end
