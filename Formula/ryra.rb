class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.105"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.105-aarch64-apple-darwin.tar.gz"
    sha256 "fe19e781eb37635bd70a3b8d8827c9d1cdb7a86f8c3ea0f06e3c45864778bb8d"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.105-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80495ff0fbd43345a33f9a4a07a9de3596abb34954ade70827af8220b12a24c3"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.105-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f459d43aba4b28c41078f20318ced5ad13321d1eec92264fb040453b0c2adb7"
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
