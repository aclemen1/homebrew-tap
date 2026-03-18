class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/ea/2c/640e9e66d6bc8bc344f4014f417c936ab3ca44d1d4547e696c2b4885a757/claude_skill_manager-1.5.2.tar.gz"
  sha256 "92784666728d5b93cbb60e64e97262a238d9aa177966ff0f52bba8948507f300"
  license "MIT"

  bottle do
    root_url "https://github.com/aclemen1/homebrew-tap/releases/download/v1.5.2"
    rebuild 1
    sha256 cellar: :any, arm64_sonoma: "fa5a92224ae6c7c76e38184b8c30486080bf44e2253df7882b62e4cdf40818cc"
  end

  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    python3 = "python3.12"
    venv = libexec
    system python3, "-m", "venv", "--without-pip", venv
    system venv/"bin/python", "-m", "ensurepip", "--default-pip"
    system venv/"bin/pip", "install", "--no-cache-dir", "--no-binary", "pydantic-core", "."
    bin.install_symlink Dir[venv/"bin/csm"]
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
