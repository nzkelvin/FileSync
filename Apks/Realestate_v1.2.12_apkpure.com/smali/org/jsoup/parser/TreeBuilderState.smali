.class abstract enum Lorg/jsoup/parser/TreeBuilderState;
.super Ljava/lang/Enum;
.source "TreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/TreeBuilderState$24;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/parser/TreeBuilderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum AfterBody:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum AfterHead:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum BeforeHead:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum ForeignContent:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InBody:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InCaption:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InCell:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InFrameset:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InHead:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InRow:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InSelect:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InTable:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InTableBody:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum InTableText:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum Initial:Lorg/jsoup/parser/TreeBuilderState;

.field public static final enum Text:Lorg/jsoup/parser/TreeBuilderState;

.field private static nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$1;

    const-string v1, "Initial"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/TreeBuilderState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->Initial:Lorg/jsoup/parser/TreeBuilderState;

    .line 37
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$2;

    const-string v1, "BeforeHtml"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/parser/TreeBuilderState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/TreeBuilderState;

    .line 66
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$3;

    const-string v1, "BeforeHead"

    invoke-direct {v0, v1, v5}, Lorg/jsoup/parser/TreeBuilderState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->BeforeHead:Lorg/jsoup/parser/TreeBuilderState;

    .line 94
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$4;

    const-string v1, "InHead"

    invoke-direct {v0, v1, v6}, Lorg/jsoup/parser/TreeBuilderState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InHead:Lorg/jsoup/parser/TreeBuilderState;

    .line 165
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$5;

    const-string v1, "InHeadNoscript"

    invoke-direct {v0, v1, v7}, Lorg/jsoup/parser/TreeBuilderState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/TreeBuilderState;

    .line 194
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$6;

    const-string v1, "AfterHead"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->AfterHead:Lorg/jsoup/parser/TreeBuilderState;

    .line 245
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$7;

    const-string v1, "InBody"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    .line 785
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$8;

    const-string v1, "Text"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->Text:Lorg/jsoup/parser/TreeBuilderState;

    .line 804
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$9;

    const-string v1, "InTable"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InTable:Lorg/jsoup/parser/TreeBuilderState;

    .line 902
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$10;

    const-string v1, "InTableText"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InTableText:Lorg/jsoup/parser/TreeBuilderState;

    .line 938
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$11;

    const-string v1, "InCaption"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InCaption:Lorg/jsoup/parser/TreeBuilderState;

    .line 973
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$12;

    const-string v1, "InColumnGroup"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/TreeBuilderState;

    .line 1028
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$13;

    const-string v1, "InTableBody"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InTableBody:Lorg/jsoup/parser/TreeBuilderState;

    .line 1088
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$14;

    const-string v1, "InRow"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InRow:Lorg/jsoup/parser/TreeBuilderState;

    .line 1149
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$15;

    const-string v1, "InCell"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InCell:Lorg/jsoup/parser/TreeBuilderState;

    .line 1206
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$16;

    const-string v1, "InSelect"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InSelect:Lorg/jsoup/parser/TreeBuilderState;

    .line 1294
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$17;

    const-string v1, "InSelectInTable"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/TreeBuilderState;

    .line 1312
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$18;

    const-string v1, "AfterBody"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->AfterBody:Lorg/jsoup/parser/TreeBuilderState;

    .line 1340
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$19;

    const-string v1, "InFrameset"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->InFrameset:Lorg/jsoup/parser/TreeBuilderState;

    .line 1386
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$20;

    const-string v1, "AfterFrameset"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

    .line 1410
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$21;

    const-string v1, "AfterAfterBody"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/TreeBuilderState;

    .line 1426
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$22;

    const-string v1, "AfterAfterFrameset"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

    .line 1444
    new-instance v0, Lorg/jsoup/parser/TreeBuilderState$23;

    const-string v1, "ForeignContent"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TreeBuilderState$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->ForeignContent:Lorg/jsoup/parser/TreeBuilderState;

    .line 13
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/jsoup/parser/TreeBuilderState;

    sget-object v1, Lorg/jsoup/parser/TreeBuilderState;->Initial:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/parser/TreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/parser/TreeBuilderState;->BeforeHead:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/parser/TreeBuilderState;->InHead:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/parser/TreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->AfterHead:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InBody:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->Text:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InTable:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InTableText:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InCaption:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InTableBody:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InRow:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InCell:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InSelect:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->AfterBody:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->InFrameset:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jsoup/parser/TreeBuilderState;->ForeignContent:Lorg/jsoup/parser/TreeBuilderState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->$VALUES:[Lorg/jsoup/parser/TreeBuilderState;

    .line 1451
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TreeBuilderState;->nullString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/TreeBuilderState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/jsoup/parser/TreeBuilderState$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilderState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Token;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/parser/Token;

    .prologue
    .line 13
    invoke-static {p0}, Lorg/jsoup/parser/TreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Token$StartTag;
    .param p1, "x1"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lorg/jsoup/parser/TreeBuilderState;->handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Token$StartTag;
    .param p1, "x1"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lorg/jsoup/parser/TreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method private static handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 2
    .param p0, "startTag"    # Lorg/jsoup/parser/Token$StartTag;
    .param p1, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 1477
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1478
    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1479
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->markInsertionMode()V

    .line 1480
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState;->Text:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 1481
    return-void
.end method

.method private static handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 2
    .param p0, "startTag"    # Lorg/jsoup/parser/Token$StartTag;
    .param p1, "tb"    # Lorg/jsoup/parser/TreeBuilder;

    .prologue
    .line 1470
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/TreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 1471
    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1472
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->markInsertionMode()V

    .line 1473
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState;->Text:Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TreeBuilder;->transition(Lorg/jsoup/parser/TreeBuilderState;)V

    .line 1474
    return-void
.end method

.method private static isWhitespace(Lorg/jsoup/parser/Token;)Z
    .locals 5
    .param p0, "t"    # Lorg/jsoup/parser/Token;

    .prologue
    const/4 v3, 0x0

    .line 1456
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1457
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v1

    .line 1459
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1461
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1466
    .end local v0    # "c":C
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v3

    .line 1459
    .restart local v0    # "c":C
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TreeBuilderState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lorg/jsoup/parser/TreeBuilderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/TreeBuilderState;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/parser/TreeBuilderState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/jsoup/parser/TreeBuilderState;->$VALUES:[Lorg/jsoup/parser/TreeBuilderState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/TreeBuilderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/TreeBuilderState;

    return-object v0
.end method


# virtual methods
.method abstract process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/TreeBuilder;)Z
.end method
