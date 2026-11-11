class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.18.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "f35bb003a3cc851c222a929e7b585b2c120f85d78e1babbc791fa436602916c9"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "e81678e9a19af5d892d7ca42e28ab8c261bc76a605026d20f72ccf365ed0b446"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.0/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e56b184d8879abe05ba6ddf48e454fff72dde8a60e4ea9e405dd1910be3117a"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.18.0/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "64dff852f72f2d80be4a8bebcb67e0343b53781b44939747f78025a58c693702"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
