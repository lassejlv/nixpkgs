{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "eventlog";
  version = "0.2.13";

  src = fetchFromGitHub {
    owner = "balabit";
    repo = "eventlog";
    rev = "a5c19163ba131f79452c6dfe4e31c2b4ce4be741";
    sha256 = "0a2za3hs7wzy14z7mfgldy1r9xdlqv97yli9wlm8xldr0amsx869";
  };

  meta = {
    description = "Syslog event logger library";
    longDescription = ''
      The EventLog library aims to be a replacement of the simple syslog() API
      provided on UNIX systems. The major difference between EventLog and
      syslog is that EventLog tries to add structure to messages.

      Where you had a simple non-structrured string in syslog() you have a
      combination of description and tag/value pairs.
    '';
    homepage = "https://www.balabit.com/support/community/products/";
    license = lib.licenses.bsd3;
    platforms = lib.platforms.unix;
  };
}
