static const char norm_fg[] = "#ebe5da";
static const char norm_bg[] = "#0f1217";
static const char norm_border[] = "#a4a098";

static const char sel_fg[] = "#ebe5da";
static const char sel_bg[] = "#897D81";
static const char sel_border[] = "#ebe5da";

static const char urg_fg[] = "#ebe5da";
static const char urg_bg[] = "#CC936E";
static const char urg_border[] = "#CC936E";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
