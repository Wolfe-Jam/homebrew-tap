class BunSticky < Formula
  desc "Fastest bun under the sum — Zig-native FAF (.faf) context CLI"
  homepage "https://github.com/Wolfe-Jam/bun-sticky-zig"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.1/faf-macos-arm64"
      sha256 "c11c46ce8cb23536bec0ee7198869c380183f3ef055048c1a283039cbf780b82"
    end
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.1/faf-macos-x64"
      sha256 "e67432635b96e2e3dac32d223c51732a00e4b327020b802a99bcae3df9151d0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.1/faf-linux-x64"
      sha256 "7e94e9ad543b3002c5c8793b63d3e98842d1d778b6a0276ab0c87d2dd0edc21a"
    end
  end

  def install
    bin.install Dir["faf-*"].first => "faf"
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/faf version")
  end
end
