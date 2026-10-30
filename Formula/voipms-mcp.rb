class VoipmsMcp < Formula
  desc "Local MCP server for VoIP.ms that keeps your API credentials on this machine"
  homepage "https://voipms-mcp.ecliptical.io"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.0/voipms-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "8bd05f156648e1e092a1b1db1609eaa6d03168060a90bcd87396c1b9174d0548"
    end
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.0/voipms-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "f19920a9d28f2de820b4a95c191a3577e3cd2514817364003457f745a3b3f58b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.0/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95072a7576f963eefe4ed2bf84880ee911763c656d3c5bc4b91ce6d9f09172ac"
    end
    on_arm do
      depends_on arch: :x86_64
      url "https://github.com/ecliptical/homebrew-voipms-mcp/releases/download/v0.16.0/voipms-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95072a7576f963eefe4ed2bf84880ee911763c656d3c5bc4b91ce6d9f09172ac"
    end
  end

  def install
    bin.install "voipms-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/voipms-mcp --version 2>&1")
  end
end
