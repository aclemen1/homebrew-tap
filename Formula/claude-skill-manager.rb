class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/6d/49/f43c9cc8bb8ba2a2cf35b62c15470a33051be6df286f373c67d560a18e6e/claude_skill_manager-1.5.3.tar.gz"
  sha256 "a6d2a951e0be0d19225d8507f9d155b6a9303119419b0e3160567ebfba3ff8d0"
  license "MIT"

  bottle do
    root_url "https://github.com/aclemen1/homebrew-tap/releases/download/v1.5.3"
    rebuild 1
    sha256 cellar: :any, arm64_sonoma: "ea69625457cc17a00fb99953c3b848d28d7b92ecae4841c4a8881492b02b9103"
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
