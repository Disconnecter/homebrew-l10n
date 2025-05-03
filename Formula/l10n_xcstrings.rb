class L10nXcstrings < Formula
  include Language::Python::Virtualenv

  desc "Generate Swift code from xcstrings files"
  homepage "https://github.com/Disconnecter/L10nXcstrings"
  url "https://github.com/Disconnecter/L10nXcstrings/archive/refs/tags/0.0.1.tar.gz"
  sha256 "505644a5838a81450fce5de72f4c844e8034be5ab4ea84af658c992c5291358a"
  license "MIT"
  head "https://github.com/Disconnecter/L10nXcstrings.git", branch: "main"

  depends_on "python@3.11"

  def install
    tarball = cached_download
    build_dir = buildpath/"src"

    # Extract archive and strip the top-level folder
    system "tar", "-xzf", tarball, "-C", build_dir, "--strip-components=1"

    cd build_dir do
      venv = virtualenv_create(libexec, "python3.11")
      venv.pip_install_and_link buildpath/"src"
    end
  end

  test do
    output = shell_output("#{bin}/l10n-xcstrings --help")
    assert_match "usage", output
  end
end
