# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TaskTui < Formula
  desc "Terminal user interface for Task"
  homepage "https://github.com/aleksandersh/task-tui/"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aleksandersh/task-tui/releases/download/v1.0.0/task-tui_darwin_amd64.tar.gz"
      sha256 "7f1170d5334dbef8d0a6ed2a95c0c484bbb7e3f9b26c6a96b524d973982c9f73"

      def install
        bin.install "task-tui"
      end
    end
    on_arm do
      url "https://github.com/aleksandersh/task-tui/releases/download/v1.0.0/task-tui_darwin_arm64.tar.gz"
      sha256 "97f29b01dddf151496beae63bb4dda733496363543458a527c084385441211fd"

      def install
        bin.install "task-tui"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aleksandersh/task-tui/releases/download/v1.0.0/task-tui_linux_amd64.tar.gz"
        sha256 "1409d9263aa0c766ccf2d0512a52d1d4c0ecde353b72865412c19cef6577709e"

        def install
          bin.install "task-tui"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/aleksandersh/task-tui/releases/download/v1.0.0/task-tui_linux_arm.tar.gz"
        sha256 "3241bb02a944e072e8bc33d659faacd66b4e52a0126924baab84ad9eef0e0acc"

        def install
          bin.install "task-tui"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aleksandersh/task-tui/releases/download/v1.0.0/task-tui_linux_arm64.tar.gz"
        sha256 "5116c57e2d79180444528818eec6cfd2ee709b9e36799a1da9ade59fffabfb4e"

        def install
          bin.install "task-tui"
        end
      end
    end
  end

  test do
    system "#{bin}/task-tui --version"
  end
end
