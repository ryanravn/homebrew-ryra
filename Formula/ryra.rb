class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.109"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.109-aarch64-apple-darwin.tar.gz"
    sha256 "361ef764645a0af871b13c99157226dae1c4e6c04db0d8d2714471488dac9d64"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.109-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52fdd993485a322989f5df7dabf98bb4cf99fb14d53658d79378c440c6c59e31"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.109-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5fe20bc64f0e0736731c4074f6751a6befe3c2524c0c5d91e02f0decc6e5601"
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
