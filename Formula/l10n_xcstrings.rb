class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Localization tool for xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.1.tar.gz"
  sha256 "d11375f9a741bd72cf8ef249b7cc6fa7a52643c59da87ccee84140f1e4d906e1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end
