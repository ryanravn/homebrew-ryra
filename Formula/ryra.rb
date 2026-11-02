class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.101"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.101-aarch64-apple-darwin.tar.gz"
    sha256 "6f8c8276927c56f2bbb8003d2cec79bda6260ae94c6e518a2555fe15edd05b4c"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.101-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73e663d8da15cfc1a8008a39350e9f5f7081a63ea9322d68ac98968c5a45dc20"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.101-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b06cf4d0f63f03b078d961831ece03ca19eed857de6a59650c351ed4a7ad81ad"
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
