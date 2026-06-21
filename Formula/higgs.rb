class Higgs < Formula
  desc "Agent-first CLI for Proton Mail — schema manifest, NDJSON, typed errors, stable exit codes"
  homepage "https://github.com/higgscli/higgs"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_darwin_arm64.tar.gz"
      sha256 "31189d208fb669d9d7bfa3da554f57194157e29b0fa81769d70a020df0474bd7"
    end
    on_intel do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_darwin_amd64.tar.gz"
      sha256 "00d267f6f63895283c72dadf3342f6af93e65ad30888e0d20f031a9f1e9301cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_linux_arm64.tar.gz"
      sha256 "dbbc09ae3946f52e41f0ac2f634f349f55cc44d6871ff315d584627b8870a5d7"
    end
    on_intel do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_linux_amd64.tar.gz"
      sha256 "fff4cc2d4c303d7c99c7b902c1a903e72346ca21fcad83a50c723df05056e58c"
    end
  end

  def install
    bin.install "higgs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/higgs version")
  end
end
