class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.16.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.2/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "0a87d059ffd0eb445879e7efa102292a01d21dcfe9d6bc39d3464c0c7f72cba6"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.2/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "9c1017159970e4f92581e3cb63e7a25aae9e7a7b3c738998a7adaa6bc7b853c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.2/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02a4773a77406153f2a4b23305c1a6216599dbdaf87212c2bcc426dca6c3205b"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.2/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89feccb299453de799037df1667bcc02a1658f02cda05296504f66cccd50d85b"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
