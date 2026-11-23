class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.115"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.115-aarch64-apple-darwin.tar.gz"
    sha256 "3b4bd9ca79dfcffa1bb332ef0de62d7bbd5eb7b2ec816f7d18241b0af1773d84"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.115-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba9cfb4206adeac6f80318d0eec9fb550bbb4b6d370d00d072c9f6968ab4eee6"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.115-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ffa777cb8e9765a795a5a063edfcde0a009c16aac997175d44b20df0ea1acd4"
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
