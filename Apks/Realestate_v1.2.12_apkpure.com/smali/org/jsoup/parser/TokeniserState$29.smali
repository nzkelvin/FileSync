.class final enum Lorg/jsoup/parser/TokeniserState$29;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 3
    .param p1, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lorg/jsoup/parser/CharacterReader;

    .prologue
    .line 624
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    .line 625
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 644
    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 647
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 627
    :sswitch_0
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 628
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 631
    :sswitch_1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 632
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 635
    :sswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 636
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 637
    const v2, 0xfffd

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 640
    :sswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 641
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 625
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    .line 644
    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
