class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.com"
  version "0.1.118"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.com/bin/ryra-0.1.118-aarch64-apple-darwin.tar.gz"
    sha256 "2693547d7af4d409d2d0d3ca7685d436fa6d1119ca1f84e6c8f964c10cc94644"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.com/bin/ryra-0.1.118-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9df2ae2f3e84acbc89526570a77faeea20c871e3628fe5a3ac5ba9d58ff0358"
    end
    on_intel do
      url "https://pkg.ryra.com/bin/ryra-0.1.118-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a794c0fc84df394716cdad3d34cf652c86407037045d9011110fadbe48d80f0"
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
