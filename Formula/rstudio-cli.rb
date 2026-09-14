class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.0/rstudio-cli-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "3baa21b5174b6ed0498156415623d9525bda69d410385f768cdef3a810d3809b"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.0/rstudio-cli-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "245af326bb03f3e4205163461a1948365dd80b065640f352b84a8faf9d76fd56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.0/rstudio-cli-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c54e7ad0cb738c93ca60d1797d8762b16c4c191ba6f896e18c8435f836d22c0"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.21.0/rstudio-cli-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88e29e8021da2eead0f31eee5a86baf867f0bd700b20c9441ffba6c1c2997809"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.21.0", shell_output("#{bin}/rstudio version")
  end
end
