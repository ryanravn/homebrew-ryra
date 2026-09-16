class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.34"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.34-aarch64-apple-darwin.tar.gz"
    sha256 "2b0981b18e33ce03e93f6ff410e482231d79076db5e226c71d3d1c300a27214c"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a8bf42533e8b38084d0e41e42a575088eace128a5cf9eff2f21c1a2a6f6d498"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d540ce3bf05d181c4a88636b10ad600cc6818f3a5fc39e10bf0143c2108f420f"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
