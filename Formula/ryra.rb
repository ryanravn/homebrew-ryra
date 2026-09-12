class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.28"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.28-aarch64-apple-darwin.tar.gz"
    sha256 "c658cffbcc43ab7778b704ada3d02aea5701aa04970e38b31eb738a0cc620181"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cd82987c8c51a01ae0052240fb3e96e57a3132f784ddc0ced0d6b601a03dcd1"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9698c5829ccd1aabc17d6d99f66784ca6632b0714eea0051efdb0757719b86da"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
