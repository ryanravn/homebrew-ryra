class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.58"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.58-aarch64-apple-darwin.tar.gz"
    sha256 "0b5669e0fb099a25597ab5a247e7c86f53db6fd9c66d3431f5206613e012c19f"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.58-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e60855591c4ac699e82cab7e476134dccd63bda0b4433bc7e0833a08fb8dc6c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.58-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "055a356644579913ae387d781b032a0c251988f82373debc12dba97cdcf98594"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
