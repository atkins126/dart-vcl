part of vcl;


const int TCN_FIRST       = 0-550; // tab control
const int TCN_LAST        = 0-580;

const MESSAGE TCM_GETITEMCOUNT       = MESSAGE(0x1304, 'TCM_GETITEMCOUNT');
const MESSAGE TCM_GETITEM            = MESSAGE(0x1305, 'TCM_GETITEM');
const MESSAGE TCM_SETITEM            = MESSAGE(0x1306, 'TCM_SETITEM');
const MESSAGE TCM_INSERTITEM         = MESSAGE(0x1307, 'TCM_INSERTITEM');
const MESSAGE TCM_DELETEITEM         = MESSAGE(0x1308, 'TCM_DELETEITEM');
const MESSAGE TCM_DELETEALLITEMS     = MESSAGE(0x1309, 'TCM_DELETEALLITEMS');


const MESSAGE TCM_GETCURSEL          = MESSAGE(0x1311, 'TCM_GETCURSEL');
const MESSAGE TCM_SETCURSEL          = MESSAGE(0x1312, 'TCM_SETCURSEL');


const int TCIF_TEXT       = 0x0001;
// const int TCIF_IMAGE      = 0x0002;
// const int TCIF_RTLREADING = 0x0004;
const int TCIF_PARAM      = 0x0008;

const int TCN_SELCHANGE          = TCN_FIRST - 1;
const int TCN_SELCHANGING        = TCN_FIRST - 2;
