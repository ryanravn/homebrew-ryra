class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.78"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.78-aarch64-apple-darwin.tar.gz"
    sha256 "0d9ee8a838adb062c1a9f90f8f4aad80e41b6a0a26b4e5daf098214fedb093ba"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.78-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bfebcb1797cab169ecd00e6079dc9267000ad2996450a8d139fb3cba7029ebd"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.78-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e13020f032e738b919c02e594e85a002f5a36d77183c63acc526fd95d80ad51"
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
