vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_custom_section = {
   a = { description = { "  Find File                 SPC f f" }, command = "DashboardFindFile" },
   b = { description = { "  Recents                   SPC f o" }, command = "DashboardFindHistory" },
   c = { description = { "  Find Word                 SPC f w" }, command = "DashboardFindWord" },
   d = { description = { "  Change Colorscheme        SPC t c" }, command = "DashboardChangeColorscheme" },
   e = { description = { "洛 New File                  SPC c n" }, command = "DashboardNewFile" },
   f = { description = { "  Bookmarks                 SPC b m" }, command = "DashboardJumpMarks" },
   g = { description = { "  Load Last Session         SPC s l" }, command = "SessionLoad" },
}
vim.g.dashboard_custom_header = {
    "",
	"                  .',;:::::;,'.               ";
	"              .';::dxdxxddolll'll'            ";
	"           .,cok00OxkkkdxkKX0kl:::c;.         ";
	"          ,cxkdcx0l,kOl;xNx,oON0olllc,        ";
	"        .:xxlOc:dddOo0XXodddxO;kNklll:,.      ";
	"      .'oOoOdxkNNx;lKWK'KWWNdo:dlX0llc;:.     ";
	"    ';'oklX0NxWXc.clKWK,:WWKoOlld;XOlllc:     ";
	"  ,cl,lOlOlx;cO:k,cckkdlckKN'olxWxcNdll:;.    ";
	" .llllO:N;dx00KXxXWWWWNOxK0kx:l:WN:0Kllllc'   ";
	"   ::oo0X:WWc..oWWWWWWWWWNkkXWX;WWklNllllll,  ";
	"    ,d:W0lXKo;;xWNWWWWWWW:..'WW:WWX;Wollllll' ";
	"    'cdWN;O00XWWWoOdxOxWWXxoOKX:WWN;Wlccc::   ";
	"     'OWx:;xNNWWWWWWWWWWWWX0KOc0WWN:X;;:;     ";
	"      OXO'oOd0WX0WWWWWWWWWWNXo:dNWOdxlll.     ";
	"      dNollod;:oklOdxoXxxl0xoklNOW:xlll'      ";
	"      'NkOckXNKOxdlxdc'dxdoxc:ddKd:c::'       ";
	"       .Xo;..  x0XXOl0:XX0x .,d0l:oldOd       ";
	"          ;.             ...'    co;          ";
	"";
  }

vim.g.dashboard_custom_footer = {
    " Vim is the best",
}
