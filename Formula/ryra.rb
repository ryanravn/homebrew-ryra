class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.49"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.49-aarch64-apple-darwin.tar.gz"
    sha256 "953f80805941239acaa25dc598225a33f7fff9fcee92e9df0d9c20339192a314"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.49-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "829089c990e1666794554f3bd729f64204074b170002b2abd730029c5cc823f3"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f5bfb3a5bcad11c95a2b0e47cd964d1a979f5cd96e5be3aa56adff5f668a2e7"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
