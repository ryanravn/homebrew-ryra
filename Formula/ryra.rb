class Ryra < Formula
  desc "Manage machines, secrets, deployments and agent workspaces"
  homepage "https://ryra.dev"
  version "0.1.60"
  # Proprietary software. Copyright (c) Erlend Ravn Ryan. All rights reserved.
  on_macos do
    depends_on arch: :arm64
    url "https://pkg.ryra.dev/bin/ryra-0.1.60-aarch64-apple-darwin.tar.gz"
    sha256 "c8e9b91b4ecd8fac4dc9bf407984063aac598ee5501f99303d4f446ea22d5f2b"
  end
  on_linux do
    on_arm do
      url "https://pkg.ryra.dev/bin/ryra-0.1.60-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "423fcb23e99448d6a9d79d5805cb8a7987037908cab8fba82c32acd2f13fffb8"
    end
    on_intel do
      url "https://pkg.ryra.dev/bin/ryra-0.1.60-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66df8a90f07b380561122c1cbbfc88bb8509280b7aa15321eb221538dc3623a9"
    end
  end
  def install
    bin.install "ryra"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ryra --version")
  end
end
