class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.30"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.30-aarch64-apple-darwin.tar.gz"
    sha256 "a5feca2fff959173f6bce4fc84e112d3d822b8d863fe5edff6dfe2b965aadd28"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f0d435075e30f39ce8f89fdd3777af21689dafa0d3e87e030b77c3ad81415dd"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0db43e61c396c8364cc8beb05a3dddcdf945fdbf6bbee6cd5af40f3b9e88358d"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
