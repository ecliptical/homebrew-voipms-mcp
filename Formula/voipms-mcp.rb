class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.13.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.5/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "19c56d2bc56f53aa63d3b0bd80185d5946e184b7d4794f6f448d90f93d089aea"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.13.5/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "9b57cc1acbab77d820959e02e7dcb0f6670d9d25ec43af375ca35ef101ba783d"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
