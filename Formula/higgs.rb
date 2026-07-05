class Higgs < Formula
  desc "Agent-first CLI for Proton Mail with schema, NDJSON and typed errors"
  homepage "https://github.com/higgscli/higgs"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_darwin_arm64.tar.gz"
      sha256 "0c276bb4950a7e35ee0245be8f0fae5446424436865af8780c1cd64c77a760b0"
    end
    on_intel do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_darwin_amd64.tar.gz"
      sha256 "fed0946082412eb80f91964fa75308a00ec4e02472e465f6aca179a8e42d7fc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_linux_arm64.tar.gz"
      sha256 "d27e5775b69343d6490d1734ef741db26988c26381f7b3200a7c2f5340e67de5"
    end
    on_intel do
      url "https://github.com/higgscli/higgs/releases/download/v#{version}/higgs_#{version}_linux_amd64.tar.gz"
      sha256 "e4fc834284c2f08ce0d26c098428a73c10ef4cac67c4cf4939afe240fbea7a75"
    end
  end

  def install
    bin.install "higgs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/higgs --version")
  end
end
