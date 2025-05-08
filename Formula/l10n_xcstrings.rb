class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift localization code from .xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.4.tar.gz"
  sha256 "5e4ef17cdc734c5cd1d48932978eff70e113a9c62bbbe699acb0e2694a69d1d7"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
