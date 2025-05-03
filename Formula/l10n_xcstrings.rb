class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift localization code from .xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.1.tar.gz"
  sha256 "d94b67ce40b61d6ef99b00d7284ab9da95f6663b9a95e364c31b2b4f0a528700"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
