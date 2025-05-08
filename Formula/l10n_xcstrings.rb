class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift localization code from .xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.4.tar.gz"
  sha256 "bec53b0927805293e356d7179b1d334a43bf75cd22ff596a699df3a9086ef068"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
