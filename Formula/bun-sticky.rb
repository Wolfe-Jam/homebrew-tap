class BunSticky < Formula
  desc "Fastest bun under the sum — Zig-native FAF (.faf) context CLI"
  homepage "https://github.com/Wolfe-Jam/bun-sticky-zig"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.2/faf-macos-arm64"
      sha256 "5ce3430ae28048a527703cba166bb6c177e7e56a32ad6901e283cef8e7cefc16"
    end
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.2/faf-macos-x64"
      sha256 "a0318b60f3c982503dc6fe9804572754a7b9c402a5e7c53c44cebf50fbc140b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.2/faf-linux-x64"
      sha256 "516b365d85f865a521e45918fd125179a8c4930092cf4da50d91e489fee75c8b"
    end
  end

  def install
    bin.install Dir["faf-*"].first => "faf"
  end

  test do
    assert_match "1.4.2", shell_output("#{bin}/faf version")
  end
end
