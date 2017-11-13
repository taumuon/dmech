/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.sdl.ttf;

private
{
    import derelict.util.loader;
    import derelict.util.exception;
    import derelict.util.compat;
    import derelict.sdl.sdl;

}

enum : Uint8
{
    SDL_TTF_MAJOR_VERSION = 2,
    SDL_TTF_MINOR_VERSION = 0,
    SDL_TTF_PATCHLEVEL    = 11,
}
alias SDL_TTF_MAJOR_VERSION TTF_MAJOR_VERSION;
alias SDL_TTF_MINOR_VERSION TTF_MINOR_VERSION;
alias SDL_TTF_PATCHLEVEL TTF_PATCHLEVEL;

enum
{
    UNICODE_BOM_NATIVE = 0xFEFF,
    UNICODE_BOM_SWAPPED = 0xFFFE,
    TTF_STYLE_NORMAL = 0x00,
    TTF_STYLE_BOLD = 0x01,
    TTF_STYLE_ITALIC = 0x02,
    TTF_STYLE_UNDERLINE = 0x04,
    TTF_STYLE_STRIKETHROUGH = 0x08,
}

enum
{
    TTF_HINTING_NORMAL = 0,
    TTF_HINTING_LIGHT = 1,
    TTF_HINTING_MONO = 2,
    TTF_HINTING_NONE = 3,
}

alias SDL_SetError TTF_SetError;
alias SDL_GetError TTF_GetError;

struct _TTF_Font {}
alias _TTF_Font TTF_Font;

void SDL_TTF_VERSION(SDL_version* X)
{
    X.major = SDL_TTF_MAJOR_VERSION;
    X.minor = SDL_TTF_MINOR_VERSION;
    X.patch = SDL_TTF_PATCHLEVEL;
}

void TTF_VERSION(SDL_version* X) { SDL_TTF_VERSION(X); }


extern (C)
{
    alias CSDLVERPTR function() da_TTF_Linked_Version;
    alias void function(int) da_TTF_ByteSwappedUNICODE;
    alias int function() da_TTF_Init;
    alias TTF_Font * function (in char*, int) da_TTF_OpenFont;
    alias TTF_Font * function (in char*, int, long ) da_TTF_OpenFontIndex;
    alias TTF_Font * function (SDL_RWops*, int, int) da_TTF_OpenFontRW;
    alias TTF_Font * function (SDL_RWops*, int, int, long) da_TTF_OpenFontIndexRW;
    alias int function (in TTF_Font*) da_TTF_GetFontStyle;
    alias void function (in TTF_Font*, int style) da_TTF_SetFontStyle;
    alias int function(in TTF_Font*) da_TTF_GetFontOutline;
    alias void function(TTF_Font*, int) da_TTF_SetFontOutline;
    alias int function(in TTF_Font*) da_TTF_GetFontHinting;
    alias void function(TTF_Font*, int) da_TTF_SetFontHinting;
    alias int function(in TTF_Font*) da_TTF_FontHeight;
    alias int function(in TTF_Font*) da_TTF_FontAscent;
    alias int function(in TTF_Font*) da_TTF_FontDescent;
    alias int function(in TTF_Font*) da_TTF_FontLineSkip;
    alias int function(in TTF_Font*) da_TTF_GetFontKerning;
    alias void function(TTF_Font*, int) da_TTF_SetFontKerning;
    alias int function(in TTF_Font*) da_TTF_FontFaces;
    alias int function(in TTF_Font*) da_TTF_FontFaceIsFixedWidth;
    alias char* function(in TTF_Font*) da_TTF_FontFaceFamilyName;
    alias char* function(in TTF_Font*) da_TTF_FontFaceStyleName;
    alias int function(in TTF_Font*, Uint16) da_TTF_GlyphIsProvided;
    alias int function (TTF_Font*, Uint16, int*, int*, int*, int*, int*) da_TTF_GlyphMetrics;
    alias int function (TTF_Font*, in char*, int*, int*) da_TTF_SizeText;
    alias int function (TTF_Font*, in char*, int*, int*) da_TTF_SizeUTF8;
    alias int function (TTF_Font*, Uint16*, int*, int*) da_TTF_SizeUNICODE;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color) da_TTF_RenderText_Solid;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color) da_TTF_RenderUTF8_Solid;
    alias SDL_Surface* function (TTF_Font*, in Uint16*, SDL_Color) da_TTF_RenderUNICODE_Solid;
    alias SDL_Surface* function (TTF_Font*, Uint16, SDL_Color) da_TTF_RenderGlyph_Solid;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color, SDL_Color) da_TTF_RenderText_Shaded;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color, SDL_Color) da_TTF_RenderUTF8_Shaded;
    alias SDL_Surface* function (TTF_Font*, in Uint16*, SDL_Color, SDL_Color) da_TTF_RenderUNICODE_Shaded;
    alias SDL_Surface* function (TTF_Font*, Uint16, SDL_Color, SDL_Color) da_TTF_RenderGlyph_Shaded;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color) da_TTF_RenderText_Blended;
    alias SDL_Surface* function (TTF_Font*, in char*, SDL_Color) da_TTF_RenderUTF8_Blended;
    alias SDL_Surface* function (TTF_Font*, in Uint16*, SDL_Color) da_TTF_RenderUNICODE_Blended;
    alias SDL_Surface* function (TTF_Font*, Uint16, SDL_Color) da_TTF_RenderGlyph_Blended;
    alias void function (TTF_Font*) da_TTF_CloseFont;
    alias void function () da_TTF_Quit;
    alias int function () da_TTF_WasInit;
    alias int function(TTF_Font*,int,int) da_TTF_GetFontKerningSize;
}

mixin(gsharedString!() ~
"
da_TTF_Linked_Version TTF_Linked_Version;
da_TTF_ByteSwappedUNICODE TTF_ByteSwappedUNICODE;
da_TTF_Init TTF_Init;
da_TTF_OpenFont TTF_OpenFont;
da_TTF_OpenFontIndex TTF_OpenFontIndex;
da_TTF_OpenFontRW TTF_OpenFontRW;
da_TTF_OpenFontIndexRW TTF_OpenFontIndexRW;
da_TTF_GetFontStyle TTF_GetFontStyle;
da_TTF_SetFontStyle TTF_SetFontStyle;
da_TTF_GetFontOutline TTF_GetFontOutline;
da_TTF_SetFontOutline TTF_SetFontOutline;
da_TTF_GetFontHinting TTF_GetFontHinting;
da_TTF_SetFontHinting TTF_SetFontHinting;
da_TTF_FontHeight TTF_FontHeight;
da_TTF_FontAscent TTF_FontAscent;
da_TTF_FontDescent TTF_FontDescent;
da_TTF_FontLineSkip TTF_FontLineSkip;
da_TTF_GetFontKerning TTF_GetFontKerning;
da_TTF_SetFontKerning TTF_SetFontKerning;
da_TTF_FontFaces TTF_FontFaces;
da_TTF_FontFaceIsFixedWidth TTF_FontFaceIsFixedWidth;
da_TTF_FontFaceFamilyName TTF_FontFaceFamilyName;
da_TTF_FontFaceStyleName TTF_FontFaceStyleName;
da_TTF_GlyphIsProvided TTF_GlyphIsProvided;
da_TTF_GlyphMetrics TTF_GlyphMetrics;
da_TTF_SizeText TTF_SizeText;
da_TTF_SizeUTF8 TTF_SizeUTF8;
da_TTF_SizeUNICODE TTF_SizeUNICODE;
da_TTF_RenderText_Solid TTF_RenderText_Solid;
da_TTF_RenderUTF8_Solid TTF_RenderUTF8_Solid;
da_TTF_RenderUNICODE_Solid TTF_RenderUNICODE_Solid;
da_TTF_RenderGlyph_Solid TTF_RenderGlyph_Solid;
da_TTF_RenderText_Shaded TTF_RenderText_Shaded;
da_TTF_RenderUTF8_Shaded TTF_RenderUTF8_Shaded;
da_TTF_RenderUNICODE_Shaded TTF_RenderUNICODE_Shaded;
da_TTF_RenderGlyph_Shaded TTF_RenderGlyph_Shaded;
da_TTF_RenderText_Blended TTF_RenderText_Blended;
da_TTF_RenderUTF8_Blended TTF_RenderUTF8_Blended;
da_TTF_RenderUNICODE_Blended TTF_RenderUNICODE_Blended;
da_TTF_RenderGlyph_Blended TTF_RenderGlyph_Blended;
da_TTF_CloseFont TTF_CloseFont;
da_TTF_Quit TTF_Quit;
da_TTF_WasInit TTF_WasInit;
da_TTF_GetFontKerningSize TTF_GetFontKerningSize;
");

alias TTF_RenderText_Shaded TTF_RenderText;
alias TTF_RenderUTF8_Shaded TTF_RenderUTF8;
alias TTF_RenderUNICODE_Shaded TTF_RenderUNICODE;

class DerelictSDLttfLoader : SharedLibLoader
{
public:
    this()
    {
        super(
            "SDL_ttf.dll",
            "libSDL_ttf.so, libSDL_ttf-2.0.so, libSDL_ttf-2.0.so.0",
            "./Frameworks/SDL_ttf.framework/SDL_ttf, /Library/Frameworks/SDL_ttf.framework/SDL_ttf, /System/Library/Frameworks/SDL_ttf.framework/SDL_ttf"
        );
    }

protected:
    override void loadSymbols()
    {
        if(!DerelictSDL.isLoaded)
        {
            throw new SharedLibLoadException("DerelictSDL must be loaded before attempting to load DerelictSDLttf!");
        }

        bindFunc(cast(void**)&TTF_Linked_Version, "TTF_Linked_Version");
        bindFunc(cast(void**)&TTF_ByteSwappedUNICODE, "TTF_ByteSwappedUNICODE");
        bindFunc(cast(void**)&TTF_Init, "TTF_Init");
        bindFunc(cast(void**)&TTF_OpenFont, "TTF_OpenFont");
        bindFunc(cast(void**)&TTF_OpenFontIndex, "TTF_OpenFontIndex");
        bindFunc(cast(void**)&TTF_OpenFontRW, "TTF_OpenFontRW");
        bindFunc(cast(void**)&TTF_OpenFontIndexRW, "TTF_OpenFontIndexRW");
        bindFunc(cast(void**)&TTF_GetFontStyle, "TTF_GetFontStyle");
        bindFunc(cast(void**)&TTF_SetFontStyle, "TTF_SetFontStyle");
        bindFunc(cast(void**)&TTF_GetFontOutline, "TTF_GetFontOutline");
        bindFunc(cast(void**)&TTF_SetFontOutline, "TTF_SetFontOutline");
        bindFunc(cast(void**)&TTF_GetFontHinting, "TTF_GetFontHinting");
        bindFunc(cast(void**)&TTF_SetFontHinting, "TTF_SetFontHinting");
        bindFunc(cast(void**)&TTF_FontHeight, "TTF_FontHeight");
        bindFunc(cast(void**)&TTF_FontAscent, "TTF_FontAscent");
        bindFunc(cast(void**)&TTF_FontDescent, "TTF_FontDescent");
        bindFunc(cast(void**)&TTF_FontLineSkip, "TTF_FontLineSkip");
        bindFunc(cast(void**)&TTF_GetFontKerning, "TTF_GetFontKerning");
        bindFunc(cast(void**)&TTF_SetFontKerning, "TTF_SetFontKerning");
        bindFunc(cast(void**)&TTF_FontFaces, "TTF_FontFaces");
        bindFunc(cast(void**)&TTF_FontFaceIsFixedWidth, "TTF_FontFaceIsFixedWidth");
        bindFunc(cast(void**)&TTF_FontFaceFamilyName, "TTF_FontFaceFamilyName");
        bindFunc(cast(void**)&TTF_FontFaceStyleName, "TTF_FontFaceStyleName");
        bindFunc(cast(void**)&TTF_GlyphIsProvided, "TTF_GlyphIsProvided");
        bindFunc(cast(void**)&TTF_GlyphMetrics, "TTF_GlyphMetrics");
        bindFunc(cast(void**)&TTF_SizeText, "TTF_SizeText");
        bindFunc(cast(void**)&TTF_SizeUTF8, "TTF_SizeUTF8");
        bindFunc(cast(void**)&TTF_SizeUNICODE, "TTF_SizeUNICODE");
        bindFunc(cast(void**)&TTF_RenderText_Solid, "TTF_RenderText_Solid");
        bindFunc(cast(void**)&TTF_RenderUTF8_Solid, "TTF_RenderUTF8_Solid");
        bindFunc(cast(void**)&TTF_RenderUNICODE_Solid, "TTF_RenderUNICODE_Solid");
        bindFunc(cast(void**)&TTF_RenderGlyph_Solid, "TTF_RenderGlyph_Solid");
        bindFunc(cast(void**)&TTF_RenderText_Shaded, "TTF_RenderText_Shaded");
        bindFunc(cast(void**)&TTF_RenderUTF8_Shaded, "TTF_RenderUTF8_Shaded");
        bindFunc(cast(void**)&TTF_RenderUNICODE_Shaded, "TTF_RenderUNICODE_Shaded");
        bindFunc(cast(void**)&TTF_RenderGlyph_Shaded, "TTF_RenderGlyph_Shaded");
        bindFunc(cast(void**)&TTF_RenderText_Blended, "TTF_RenderText_Blended");
        bindFunc(cast(void**)&TTF_RenderUTF8_Blended, "TTF_RenderUTF8_Blended");
        bindFunc(cast(void**)&TTF_RenderUNICODE_Blended, "TTF_RenderUNICODE_Blended");
        bindFunc(cast(void**)&TTF_RenderGlyph_Blended, "TTF_RenderGlyph_Blended");
        bindFunc(cast(void**)&TTF_CloseFont, "TTF_CloseFont");
        bindFunc(cast(void**)&TTF_Quit, "TTF_Quit");
        bindFunc(cast(void**)&TTF_WasInit, "TTF_WasInit");
        bindFunc(cast(void**)&TTF_GetFontKerningSize, "TTF_GetFontKerningSize");
    }
}

DerelictSDLttfLoader DerelictSDLttf;

static this()
{
    DerelictSDLttf = new DerelictSDLttfLoader();
}

static ~this()
{
    if(SharedLibLoader.isAutoUnloadEnabled())
        DerelictSDLttf.unload();
}