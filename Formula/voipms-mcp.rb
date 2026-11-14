class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.19.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.19.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "1d0b6fc3c7a8c0311a1f6c474711a395d9f75ad599f085d54ed62bd62c0f8fe6"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.19.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "d26dad6884c8304c77417e0cce7f03efc75f3454134dd7a8017cced9e04d454c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.19.0/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c615a5d5b414ffe487e28f22267d28549ce805ebe814474693bb0dfc66427750"
    end
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.19.0/voipms-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11163f38388fbf8986a4a2dd1780654b25197084f9793ca4736559b0dfe731f9"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
