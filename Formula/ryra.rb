class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.100"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.100-aarch64-apple-darwin.tar.gz"
    sha256 "cd92f9de3fec8cfc8a80d75b44b596b81ed8df6faa9cdb72e6b517e4edb66491"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.100-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e3d23ef994e8d37ef3c84544c64c704a055506e9dae4ff729efd10a73afade1"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.100-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "441353afaf982e3164a9d570a1c90f88a8e7a06a5353ae5d7398d0a81619bfd1"
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
