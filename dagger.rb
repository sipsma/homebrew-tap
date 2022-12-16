# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dagger-release-34b7b6b5-0436-46d4-939e-a52b1da53244.s3.us-west-2.amazonaws.com/dagger/releases/0.0.2/dagger_0.0.2_darwin_amd64.tar.gz"
      sha256 "c6f6f863f16c78623131c33a4fb3e1e726624aba9a59e9723bfd26f065ddcf6e"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.arm?
      url "https://dagger-release-34b7b6b5-0436-46d4-939e-a52b1da53244.s3.us-west-2.amazonaws.com/dagger/releases/0.0.2/dagger_0.0.2_darwin_arm64.tar.gz"
      sha256 "063518313d9cb3fea1135375a5c03e71ca3c615e13b616feabb049d9b4acbbce"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dagger-release-34b7b6b5-0436-46d4-939e-a52b1da53244.s3.us-west-2.amazonaws.com/dagger/releases/0.0.2/dagger_0.0.2_linux_arm64.tar.gz"
      sha256 "f743dc9478cdc23c0d9e2f9e6e775c270eb765c6b10326b622025c2a28cc671e"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://dagger-release-34b7b6b5-0436-46d4-939e-a52b1da53244.s3.us-west-2.amazonaws.com/dagger/releases/0.0.2/dagger_0.0.2_linux_amd64.tar.gz"
      sha256 "8b42877f91899cbe3d02aa6334d3dfbddfdc6bf15ae2e12fc4cbe77b9d72a7ea"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
