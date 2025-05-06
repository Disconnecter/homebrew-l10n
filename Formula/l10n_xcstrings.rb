class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift localization code from .xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.3.tar.gz"
  sha256 "9e0386a2046cc49c12778628c507f0d7996a4d44d360c337e7b5600f0247a74b"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
