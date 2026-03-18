class ClaudeSkillManager < Formula
  desc "Manage Claude Code skills across projects — CLI + TUI"
  homepage "https://github.com/aclemen1/claude-skill-manager"
  url "https://files.pythonhosted.org/packages/source/c/claude-skill-manager/claude_skill_manager-0.2.0.tar.gz"
  sha256 "380a50ffc8c54e867eeb54abaca74ab0ee2ee99f1124838c4c46689cc2855ad3"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "csm", shell_output("#{bin}/csm schema")
  end
end
