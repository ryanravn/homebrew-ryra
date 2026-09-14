class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.32"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.32-aarch64-apple-darwin.tar.gz"
    sha256 "cd7e5d79f269f77f765d7aaa4104680f296893cb6980bb7ac75f38383cfdfdbb"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d811771eda3b3c342314c98d1063e1dec09078ae03977534f6679efef80999a"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1c498b2391a74ea115d8a79c164e99ed8516af0ff45a66dad09b10b91120ea8"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
