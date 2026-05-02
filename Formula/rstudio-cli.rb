class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.1/rstudio-cli-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "1ab9ec5670be0eb46bf2743fe0b3e8b747c02cc60e889675e6a472181bed5b32"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.1/rstudio-cli-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "33ee19a9863c294fb41c9d7d774ce69b9648bbe56bb898388cd8e1d4bf90e797"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.1/rstudio-cli-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d1191c294caee145077724e1c7b24e1c6dc475204a55865239c3a8c598e9d3d8"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.5.1/rstudio-cli-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a689c880446b39b36b778017eb59da6e16e35c8ea4ca87695e841ed5f8cb9de7"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/rstudio version")
  end
end
