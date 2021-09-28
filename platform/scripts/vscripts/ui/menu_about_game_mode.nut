global function InitAboutGameModeMenu
global function OpenAboutGameModePage

struct
{
	var menu
} file

void function InitAboutGameModeMenu( var newMenuArg ) //
{
	var menu = GetMenu( "AboutGameModeMenu" )
	file.menu = menu

	var Discordlink = Hud_GetChild( file.menu, "DiscordLinkText" )
	Hud_AddEventHandler( Discordlink, UIE_CLICK, DiscordLink_Activate )

	var Twitterlink = Hud_GetChild( file.menu, "TwitterR5Text" )
	Hud_AddEventHandler( Twitterlink, UIE_CLICK, TwitterR5Link_Activate )

	var TwitterJP = Hud_GetChild( file.menu, "TwitterR5JPText" )
	Hud_AddEventHandler( TwitterJP, UIE_CLICK, TwitterR5JPLink_Activate )

	var Docslink = Hud_GetChild( file.menu, "DocLinkText" )
	Hud_AddEventHandler( Docslink, UIE_CLICK, DocsLink_Activate )

	var GithubLink = Hud_GetChild( file.menu, "GithubLinkText" )
	Hud_AddEventHandler( GithubLink, UIE_CLICK, GitLink_Activate )

	AddMenuEventHandler( menu, eUIEvent.MENU_OPEN, OnAboutGameModeMenu_Open )

	AddMenuFooterOption( menu, LEFT, BUTTON_B, true, "#B_BUTTON_BACK", "#B_BUTTON_BACK" )
}

void function OpenAboutGameModePage( var button )
{
	AdvanceMenu( file.menu )
}

void function OnAboutGameModeMenu_Open()
{
	var Discordlink = Hud_GetChild( file.menu, "DiscordLinkText" )
	HudElem_SetRuiArg( Discordlink, "buttonText", "discord.com/invite/jqMkUdXrBr")

	var Twitterlink = Hud_GetChild( file.menu, "TwitterR5Text" )
	HudElem_SetRuiArg( Twitterlink, "buttonText", "twitter.com/R5Reloaded")

	var TwitterJP = Hud_GetChild( file.menu, "TwitterR5JPText" )
	HudElem_SetRuiArg( TwitterJP, "buttonText", "twitter.com/R5ReloadedJP")

	var DockLink = Hud_GetChild( file.menu, "DocLinkText" )
	HudElem_SetRuiArg( DockLink, "buttonText", "r5reloaded.gitbook.io/r5reloaded/")

	var GithubLink = Hud_GetChild( file.menu, "GithubLinkText" )
	HudElem_SetRuiArg( GithubLink, "buttonText", "github.com/Mauler125/detours_r5/")
}

void function DiscordLink_Activate( var button )
{
	LaunchExternalWebBrowser( "https://discord.gg/R5RELOADED", WEBBROWSER_FLAG_NONE )
}

void function TwitterR5Link_Activate( var button )
{
	LaunchExternalWebBrowser( "https://twitter.com/R5Reloaded", WEBBROWSER_FLAG_NONE )
}

void function TwitterR5JPLink_Activate( var button )
{
	LaunchExternalWebBrowser( "https://twitter.com/R5ReloadedJP", WEBBROWSER_FLAG_NONE )
}

void function DocsLink_Activate( var button )
{
	LaunchExternalWebBrowser( "https://r5reloaded.gitbook.io/r5reloaded/", WEBBROWSER_FLAG_NONE )
}

void function GitLink_Activate( var button )
{
	LaunchExternalWebBrowser( "https://github.com/Mauler125/detours_r5/", WEBBROWSER_FLAG_NONE )
}