class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.51"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.51-aarch64-apple-darwin.tar.gz"
    sha256 "48ee0dc11b1b137ec7be6ddd9e97fab3b6a8ede0c503e62e17d36376a24e0dec"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.51-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d239349be4a0fb67f46c4d341d7c723c390726c1f8994eca9cc4512a0d97b34"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.51-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b963cf2f40b998a01d0fa7797e3d3ffea3877c254c2fc677c12ef4e78fa200f"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
