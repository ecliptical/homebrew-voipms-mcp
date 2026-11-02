class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.16.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "50362327b9ee0c401bd3281dda88c1dab6314d3e1afe50ef72960d5c0beb1855"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "a155fe37c143faf522e376a2c4546afdbdf6e88b5b2d1ba891d3be4fa6b2f8dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.1/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a7936fd62b51e25154de4df1b6f84f2dd89f84a0280803c85f5a4d74f28fb03"
    end
    on_arm do
      depends_on arch: :x86_64
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.1/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a7936fd62b51e25154de4df1b6f84f2dd89f84a0280803c85f5a4d74f28fb03"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
