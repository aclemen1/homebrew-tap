class RstudioCli < Formula
  desc "AI-native CLI bridge to drive an RStudio Server/Desktop IDE from a terminal"
  homepage "https://github.com/aclemen1/rstudio-cli"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.2/rstudio-cli-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "e4ffdf3225c225132267f13f9244e7e9991ee3ba115f5b5eae1de7c62527274a"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.2/rstudio-cli-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "3af32aa47cdeae29c4b14cda5b25bd9f3952f373916c5c7782171759d73985ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.2/rstudio-cli-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c28e330d7dcb60d178a55aa2e9940bbb0375f7a54fd23d60197095c28f7198b"
    end
    on_intel do
      url "https://github.com/aclemen1/rstudio-cli/releases/download/v0.7.2/rstudio-cli-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0904b23461d345590c958f15adf58ba8ec839ea44323cec6d6b9ae004956c7b8"
    end
  end

  def install
    bin.install "rstudio"
  end

  test do
    assert_match "0.7.2", shell_output("#{bin}/rstudio version")
  end
end
