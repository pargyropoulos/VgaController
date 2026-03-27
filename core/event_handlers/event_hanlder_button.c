#include "event_handlers.h"
#include "core.h"
#include "middleware.h"

const char* text_commands[] = {
    "<ESC>E; Clear Screen",
    "<ESC>x <val>; Blink ON / Blink OFF",
    "<ESC>y <x>,<y>; Set Cursor Pos",
    "<ESC>b <color>; Set Background Color",
    "<ESC>f <color>; Set Foreground Color",
    "<ESC>m <mode>; Change Video Mode",
    "<ESC>d <x1>,<y1>,<x2>,<y2>,<0>; Draw Thin Rectangle",
    "<ESC>d <x1>,<y1>,<x2>,<y2>,<1>; Draw Thick Rectangle",
    "<ESC>d <x1>,<y1>,<x2>,<y2>,<0>; Draw Thin Window",
    "<ESC>d <x1>,<y1>,<x2>,<y2>,<0>; Draw Thick Window"
};

const char* graphics_commands[] = {
    "<ESC>p<f>,<b>,<x>,<y>; Set Color at {x,y}",
    "<ESC>p <f>,<b>; Paint Picture",
    "<ESC>l <picture>; Load Picture",
    "<ESC>m <mode>;	Change Video Mode"
};

const char* plot_commands[] = {
    "<ESC>E	Clear Screen",
    "<ESC>b <color>; Set Background Color",
    "<ESC>f <color>; Set Foreground Color",
    "<ESC>p <f>,<b>; Set both colors",
    "<ESC>l <x1>,<y1>,<x2>,<y2>,<color>; Draw Line",
    "<ESC>c <x>,<y>,<radius>,<color>; Draw Circle",
    "<ESC>s <x>,<y>,<color>; Set Pixel",
    "<ESC>m <mode>;	Change Video Mode"
};
static void Handler(void){

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

    VideoTerminal_ClearScreen();
    
    VideoTerminal_Print("Text Mode Commands:");
    VideoTerminal_CrLf();
    for (uint8_t i = 0; i < ARRAY_SIZE(text_commands); i++) {
        VideoTerminal_Print(text_commands[i]);
        VideoTerminal_CrLf();
    }

    VideoTerminal_Print("Image Mode Commands");
    VideoTerminal_CrLf();
    for (uint8_t i = 0; i < ARRAY_SIZE(graphics_commands); i++) {
        VideoTerminal_Print(graphics_commands[i]);
        VideoTerminal_CrLf();
    }

    VideoTerminal_Print("Plot Mode Commands");
    VideoTerminal_CrLf();
    for (uint8_t i = 0; i < ARRAY_SIZE(plot_commands); i++) {
        VideoTerminal_Print(plot_commands[i]);
        VideoTerminal_CrLf();
    }

}

const event_handler_t EventHandlerButton = {
    .handle=&Handler,
    .event=EVENT_BUTTON
};
