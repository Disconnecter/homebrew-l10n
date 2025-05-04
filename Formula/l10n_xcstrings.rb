class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift localization code from .xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.2.tar.gz"
  sha256 "c34b32a9e7dbe8e6b1d373e637d4f2d7f4a086ff804a77b11cbc307a6a1756bf"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
