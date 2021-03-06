{ stdenv, lib, fetchFromGitHub, gensio, libyaml, autoreconfHook, pkgconfig }:

stdenv.mkDerivation rec {
  pname = "ser2net";
  version = "4.1.8";

  src = fetchFromGitHub {
    owner = "cminyard";
    repo = "${pname}";
    rev = "v${version}";
    sha256 = "0xxxxlfi4wln2l86ybdsc42qcj37mnac2s2baj6s7mqri8alaa14";
  };

  buildInputs = [ pkgconfig autoreconfHook gensio libyaml ];

  meta = with lib; {
    description = "Serial to network connection server";
    homepage = "https://sourceforge.net/projects/ser2net/";
    license = licenses.gpl2;
    maintainers = with maintainers; [ emantor ];
    platforms = with platforms; linux;
  };
}
