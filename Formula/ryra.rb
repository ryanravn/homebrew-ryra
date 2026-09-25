class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.36"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.36-aarch64-apple-darwin.tar.gz"
    sha256 "cd938f91fa6c1e54ca2cb6bb883fb80535ccbb3a9c9d26e19fe0d0db312b4198"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d24945a8d0a979bca0de30553c6b04afcb26b80567ff9f394248265594995961"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31c9f648d1ce81f2755dc9bba072b5d98f66974dae08f30bbf54c2e9c1ecd9e9"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
