class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.87"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.87-aarch64-apple-darwin.tar.gz"
    sha256 "82e92f777cf8d93b2677eafa522886d4825de83a711602a58cc55e4eeea7ecad"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f798b36a9f303c91717ff7591b929796296b65aafef28fa860c047f0be070c0b"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6245120c4a85a8c01502d4fc2c20cadd4059ffe6afcba0085be71294d6adfb3"
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
