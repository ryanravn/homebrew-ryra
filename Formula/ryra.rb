class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.97"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.97-aarch64-apple-darwin.tar.gz"
    sha256 "1a9ddf888d0300ac16c8ff03bf0253fbd9de332200f40a4d8f12b50c77be58f1"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.97-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79caa87dd86dda8816d769263c39f3b622a648603c592b735c76f9da15b7899a"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.97-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2eeacc8a71a4f83f19b76ec97abfbf078af8221ed76493f481f93cfcbce5a6ae"
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
