class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Localization tool for xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.1.tar.gz"
  sha256 "8786d36cc6cb145c0cb2a392e9c9915600a53e649416e24acb62de43be76dd91"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
