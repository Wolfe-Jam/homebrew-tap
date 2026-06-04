class BunSticky < Formula
  desc "Fastest bun under the sum — Zig-native FAF (.faf) context CLI"
  homepage "https://github.com/Wolfe-Jam/bun-sticky-zig"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.0/faf-macos-arm64"
      sha256 "620b420d019dd9d93afd450327d274a7da79725f02943ce11609d903cc769ac2"
    end
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.0/faf-macos-x64"
      sha256 "26968f9497ae523123f24cf493937c2fbb118b31d3fc2e28f95da2d8ce70e416"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.1.0/faf-linux-x64"
      sha256 "b9e6b55e6d6b4c7d7fc35644e10e5cc258364e42859bae591d2f8fb3a79fe73a"
    end
  end

  def install
    bin.install Dir["faf-*"].first => "faf"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/faf version")
  end
end
