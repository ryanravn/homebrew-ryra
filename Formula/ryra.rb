class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.89"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.89-aarch64-apple-darwin.tar.gz"
    sha256 "5b68d655eaf6b3324e9e8491b0904a1a910549c1709ac9242925b5590a172bc0"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.89-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "150cb383fc351a9704248deaa83aa2c8139080d87ec9911f077bc7ccbb219a5c"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.89-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29ecdee6a2559056fa503c770aad6f199f140bbbb4b43d3697974aa803f7f6e3"
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
