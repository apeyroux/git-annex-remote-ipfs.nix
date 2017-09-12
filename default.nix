with import <nixpkgs> {};

# http://git-annex.branchable.com/special_remotes/external/git-annex-remote-ipfs

stdenv.mkDerivation {
  name = "git-annex-remote-ipfs";
  src = ./.;
  installPhase = ''
mkdir -p $out/bin
cp git-annex-remote-ipfs $out/bin
chmod a+rx $out/bin/git-annex-remote-ipfs
'';
}