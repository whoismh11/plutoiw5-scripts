#include maps\mp\gametypes\_hud_util;

init() {
    level thread onPlayerConnect();
}

onPlayerConnect() {
    for (;;) {
        level waittill("connected", player);
        player thread killstreakPlayer();
    }
}

killstreakPlayer() {
    self endon("disconnect");
    level endon("game_ended");
    self.hudkillstreak = createFontString("Objective", 1);
    self.hudkillstreak setPoint("CENTER", "TOP", "CENTER", 10);
    self.hudkillstreak.label = & "^5 KILLSTREAK: ^7";

    while (true) {
        self.hudkillstreak setValue(self.pers["cur_kill_streak"]);
        wait 0.5;
    }

}
