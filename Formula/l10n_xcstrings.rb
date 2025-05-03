class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Localization tool for xcstrings"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.1.tar.gz"
  sha256 "505644a5838a81450fce5de72f4c844e8034be5ab4ea84af658c992c5291358a"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Unpack into buildpath directly (flatten)
    system "tar", "-xzf", "L10nXcstrings-0.0.1.tar.gz", "-C", buildpath, "--strip-components=1"

    system "#{Formula["python@3.11"].opt_bin}/python3", "-m", "venv", libexec
    system libexec/"bin/python", "-m", "pip", "install", ".", "--no-deps"
    bin.install_symlink libexec/"bin/l10n-xcstrings"
  end

  test do
    system "#{bin}/l10n-xcstrings", "--help"
  end
end


