class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.112"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.112-aarch64-apple-darwin.tar.gz"
    sha256 "f80623797f8a44a879920cee99e8797ecdcc603bcf3edc046c21d7e5cf8b8142"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.112-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32eb5d0935ba02efeffc35046465efd75b111a0c5d8d3fb5c985c403d97eb16e"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.112-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f0d552ab63a31eb70cb1eb721b300f701862bc3a92afb10370debbe80908ba7"
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
