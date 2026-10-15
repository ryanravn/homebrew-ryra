class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.76"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.76-aarch64-apple-darwin.tar.gz"
    sha256 "f2cb22199451eac22ca58c54d88b8c983781c629cc6382d42ac2b7261b1c13a5"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.76-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4728b91a86898200aa3f4bad72c6cfd41bc69fbed1e1085659e50b9808381f37"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.76-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c25d3977e78bfebf389db31b3b842e1a1268bae532e27485f280b335ac27285f"
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
