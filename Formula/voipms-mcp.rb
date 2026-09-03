class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.10.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "7d8cde64c006ec5a169082e1170677efe141b7175ad565a945bd323fd6d7bf19"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.10.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "bd5ff492e5881cdd5bae7b891c0aaf692f68e10edec2e11217503d6aec6e9066"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
