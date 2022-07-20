# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dagger < Formula
  desc "Dagger is a programmable deployment system."
  homepage "https://github.com/dagger/dagger"
  version "0.2.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://dl.dagger.io/dagger/releases/0.2.25/dagger_v0.2.25_darwin_arm64.tar.gz"
      sha256 "95fb5e92dba859e2964dc15aec35ec276194818c298f9859df8c4a6029a33c56"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.25/dagger_v0.2.25_darwin_amd64.tar.gz"
      sha256 "2955058234156179a7ef5bd5d5b0185847148a74a51d89f0359891eb280d1275"

      def install
        bin.install "dagger"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.dagger.io/dagger/releases/0.2.25/dagger_v0.2.25_linux_amd64.tar.gz"
      sha256 "0b2ff7d7f940103813fea1a408b2546b8e387d5024eef099ab7a48f74f2f061c"

      def install
        bin.install "dagger"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.dagger.io/dagger/releases/0.2.25/dagger_v0.2.25_linux_arm64.tar.gz"
      sha256 "52428292b3110918fea82623fd5d48e233dc30a6ef66d913daaa4bb124f2d8a3"

      def install
        bin.install "dagger"
      end
    end
  end

  test do
    system "#{bin}/dagger version"
  end
end
