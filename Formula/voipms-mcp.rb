class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.12.1/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "09f2ed74a56ee7a66483392c4690932cf0536fead22c7d80af34855f049cbed3"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.12.1/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ec56339d3e2b8a2811a7a6e52c92e8aef66cae9cf095091452fbd85cc75a35d6"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
