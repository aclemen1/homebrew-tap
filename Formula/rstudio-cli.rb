class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.1/rstudio-cli-v0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "87edbaf0610a4921b900836985e0edc5ce916f12aceff9eee54e24257d01baaf"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.1/rstudio-cli-v0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "397e805f5f66e83436f86aa13699c061d2f2ccae47e40460c68479710571b504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.1/rstudio-cli-v0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7017f1c4a0fdce6007e27a57a5edeeaeec0daed101430c976461515896756783"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.20.1/rstudio-cli-v0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9ef96c49a0a50d76c7d82fcdc65d3f3dc377a880158d5f0d004a4295960e312"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.20.1", shell_output("#{bin}/rstudio version")
  end
end
