class BunSticky < Formula
  desc "Fastest bun under the sum — Zig-native FAF (.faf) context CLI"
  homepage "https://github.com/Wolfe-Jam/bun-sticky-zig"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.3.1/faf-macos-arm64"
      sha256 "bf7a1a74567e35b0fe71426ad2e4b6808be0c0385a23ac2899e6aba34f6dd3c4"
    end
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.3.1/faf-macos-x64"
      sha256 "2e01d12c5f50488022e58e7810d92bcdcc260e2fc8abbc66748896feac26f523"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Wolfe-Jam/bun-sticky-zig/releases/download/v1.3.1/faf-linux-x64"
      sha256 "3799af9a65088f4050652bf3da5023719750b34ee0a6f5b653853c0dd3c37383"
    end
  end

  def install
    bin.install Dir["faf-*"].first => "faf"
  end

  test do
    assert_match "1.3.1", shell_output("#{bin}/faf version")
  end
end
