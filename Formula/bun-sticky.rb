class BunSticky < Formula
  desc "Fastest bun under the sum — Zig-native FAF (.faf) context CLI"
  homepage "https://github.com/Wolfe-Jam/bun-sticky-zig"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.0/faf-macos-arm64"
      sha256 "ab77753a4ac0a92f1fd96d4b2e7e47246dcdff1c8e59ebf9c2d5527a2178186c"
    end
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.0/faf-macos-x64"
      sha256 "0ed70dff679216737466f1838695cd8eb344600f058232b605c017341bbcbb41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.4.0/faf-linux-x64"
      sha256 "1d082aa6e9ec625cf49c3ffc3bb341056de1c536b425cda56fc7da28fef5cb34"
    end
  end

  def install
    bin.install Dir["faf-*"].first => "faf"
  end

  test do
    assert_match "1.4.0", shell_output("#{bin}/faf version")
  end
end
