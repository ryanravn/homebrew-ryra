class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.71"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.71-aarch64-apple-darwin.tar.gz"
    sha256 "9a5f84b3511d9e0a765ec19ea4aca505effc28991887aa459954fc3fee9d4d9c"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.71-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d94c550ff91c857cc0fe5c605a52eb8875f2b1d4c00125d3682ec26db21f6e78"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.71-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bb6d7e86f026d2b419bb3b7a29c9c08f7f1c173f831aabd0ba596a5a4d0fd61"
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
