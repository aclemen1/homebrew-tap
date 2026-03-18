class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/3b/2e/9d066202b9f769f91f6ab8e0108f72bc320d905d988ed5e89a17d1643c9d/claude_skill_manager-1.0.0.tar.gz"
  sha256 "5624fcfbe71332a2e0d351968816b5369aa390ebdeae6830ec4e00c5679fdc09"
  license "MIT"

  depends_on "python@3.12"

  def install
    python3 = "python3.12"
    venv = libexec
    system python3, "-m", "venv", "--without-pip", venv
    system venv/"bin/python", "-m", "ensurepip", "--default-pip"
    system venv/"bin/pip", "install", "--no-cache-dir", "."
    bin.install_symlink Dir[venv/"bin/csm"]
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
