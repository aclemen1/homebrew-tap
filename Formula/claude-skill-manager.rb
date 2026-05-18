class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/6c/53/100e09fd6fe1107c4c2a57d4aa3f855d54523b7ba3f3df62817e8acb9507/claude_skill_manager-1.7.0.tar.gz"
  sha256 "e912e4ead0e1c4a0a902a02d3000b8d3d2e5419c9cca00e98616f7bd895f81f2"
  license "MIT"

  bottle do
    root_url "https://github.com/aclemen1/homebrew-tap/releases/download/v1.7.0"
    rebuild 1
    sha256 cellar: :any, arm64_sonoma: "694744c293e266d0a2d332f0e01b99449cc1ff3256350983e3205856408b00d8"
  end

  depends_on "python@3.14"
  depends_on "rust" => :build

  def install
    python3 = "python3.14"
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
