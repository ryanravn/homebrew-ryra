class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.103"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.103-aarch64-apple-darwin.tar.gz"
    sha256 "b4c11f829dd3ce8b4e711836244dea3aac7f86633ceae51ce6b5cfa6509aa9c8"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.103-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a46a8a8e25023b5341cae9f4a0cc77c46780f14b7b992a461e2a3e8340a14a1d"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.103-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ccc21c66867f5cf869205caaa518f719a3324b6f932411ae69dbac313bc40b3e"
    end
  end
  def install
    bin.install "ryra"
    (pkgshare/"licenses").install "licenses/herdr-ui.txt"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
