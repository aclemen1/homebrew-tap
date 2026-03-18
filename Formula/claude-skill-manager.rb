class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/e0/b4/1f66f3d558bb053852a25f6ebed693b6ef07a185f9eea75cc70ddfea2794/claude_skill_manager-1.5.1.tar.gz"
  sha256 "3038a93c4ddaf39061e1d880a1368981ed4ac9cbfa20ff6fbe827dc03bdae2e1"
  license "MIT"

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
