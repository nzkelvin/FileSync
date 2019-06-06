.class Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field static final replacementChar:C = '\ufffd'


# instance fields
.field private charBuffer:Ljava/lang/StringBuilder;

.field commentPending:Lorg/jsoup/parser/Token$Comment;

.field dataBuffer:Ljava/lang/StringBuilder;

.field doctypePending:Lorg/jsoup/parser/Token$Doctype;

.field private emitPending:Lorg/jsoup/parser/Token;

.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/parser/ParseError;",
            ">;"
        }
    .end annotation
.end field

.field private isEmitPending:Z

.field private lastStartTag:Lorg/jsoup/parser/Token$StartTag;

.field private reader:Lorg/jsoup/parser/CharacterReader;

.field private selfClosingFlagAcknowledged:Z

.field private state:Lorg/jsoup/parser/TokeniserState;

.field tagPending:Lorg/jsoup/parser/Token$Tag;

.field private trackErrors:Z


# direct methods
.method constructor <init>(Lorg/jsoup/parser/CharacterReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/jsoup/parser/CharacterReader;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Ljava/util/List;

    .line 19
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    .line 29
    iput-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 32
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 33
    return-void
.end method

.method private characterReferenceError()V
    .locals 4

    .prologue
    .line 220
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Ljava/util/List;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    const-string v2, "Invalid character reference"

    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Ljava/util/List;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method acknowledgeSelfClosingFlag()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 98
    return-void
.end method

.method advanceTransition(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 93
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 94
    return-void
.end method

.method appropriateEndTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Lorg/jsoup/parser/Token$StartTag;

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method consumeCharacterReference(Ljava/lang/Character;Z)Ljava/lang/Character;
    .locals 10
    .param p1, "additionalAllowedCharacter"    # Ljava/lang/Character;
    .param p2, "inAttribute"    # Z

    .prologue
    const/4 v7, 0x0

    .line 101
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v7

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v8

    iget-object v9, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v9}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v9

    if-eq v8, v9, :cond_0

    .line 105
    :cond_2
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/4 v9, 0x5

    new-array v9, v9, [C

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 108
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->mark()V

    .line 109
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 110
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v9, "X"

    invoke-virtual {v8, v9}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 111
    .local v3, "isHexMode":Z
    if-eqz v3, :cond_3

    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->consumeHexSequence()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "numRef":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 113
    invoke-direct {p0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError()V

    .line 114
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    goto :goto_0

    .line 111
    .end local v6    # "numRef":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->consumeDigitSequence()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 117
    .restart local v6    # "numRef":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 118
    invoke-direct {p0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError()V

    .line 119
    :cond_5
    const/4 v1, -0x1

    .line 121
    .local v1, "charval":I
    if-eqz v3, :cond_8

    const/16 v0, 0x10

    .line 122
    .local v0, "base":I
    :goto_2
    :try_start_0
    invoke-static {v6, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_3
    const/4 v7, -0x1

    if-eq v1, v7, :cond_7

    const v7, 0xd800

    if-lt v1, v7, :cond_6

    const v7, 0xdfff

    if-le v1, v7, :cond_7

    :cond_6
    const v7, 0x10ffff

    if-le v1, v7, :cond_9

    .line 126
    :cond_7
    invoke-direct {p0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError()V

    .line 127
    const v7, 0xfffd

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto/16 :goto_0

    .line 121
    .end local v0    # "base":I
    :cond_8
    const/16 v0, 0xa

    goto :goto_2

    .line 131
    .restart local v0    # "base":I
    :cond_9
    int-to-char v7, v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto/16 :goto_0

    .line 135
    .end local v0    # "base":I
    .end local v1    # "charval":I
    .end local v3    # "isHexMode":Z
    .end local v6    # "numRef":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "nameRef":Ljava/lang/String;
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v4

    .line 137
    .local v4, "looksLegit":Z
    const/4 v2, 0x0

    .line 138
    .local v2, "found":Z
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_c

    if-nez v2, :cond_c

    .line 139
    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 140
    const/4 v2, 0x1

    goto :goto_4

    .line 142
    :cond_b
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 143
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    goto :goto_4

    .line 146
    :cond_c
    if-nez v2, :cond_e

    .line 147
    if-eqz v4, :cond_d

    .line 148
    invoke-direct {p0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError()V

    .line 149
    :cond_d
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    goto/16 :goto_0

    .line 152
    :cond_e
    if-eqz p2, :cond_10

    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->matchesDigit()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 154
    :cond_f
    iget-object v8, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v8}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    goto/16 :goto_0

    .line 157
    :cond_10
    iget-object v7, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 158
    invoke-direct {p0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError()V

    .line 159
    :cond_11
    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->getCharacterByName(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    goto/16 :goto_0

    .line 123
    .end local v2    # "found":Z
    .end local v4    # "looksLegit":Z
    .end local v5    # "nameRef":Ljava/lang/String;
    .restart local v0    # "base":I
    .restart local v1    # "charval":I
    .restart local v3    # "isHexMode":Z
    .restart local v6    # "numRef":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 105
    :array_0
    .array-data 2
        0x9s
        0xas
        0xcs
        0x3cs
        0x26s
    .end array-data
.end method

.method createCommentPending()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lorg/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    .line 175
    return-void
.end method

.method createDoctypePending()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lorg/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 183
    return-void
.end method

.method createTagPending(Z)Lorg/jsoup/parser/Token$Tag;
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 164
    if-eqz p1, :cond_0

    new-instance v0, Lorg/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$StartTag;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 165
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lorg/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$EndTag;-><init>()V

    goto :goto_0
.end method

.method createTempBuffer()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 191
    return-void
.end method

.method currentNodeInHtmlNS()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method emit(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method emit(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method

.method emit(Lorg/jsoup/parser/Token;)V
    .locals 4
    .param p1, "token"    # Lorg/jsoup/parser/Token;

    .prologue
    .line 56
    iget-boolean v2, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    const-string v3, "There is an unread token pending!"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 61
    iget-object v2, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v3, :cond_1

    move-object v1, p1

    .line 62
    check-cast v1, Lorg/jsoup/parser/Token$StartTag;

    .line 63
    .local v1, "startTag":Lorg/jsoup/parser/Token$StartTag;
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Lorg/jsoup/parser/Token$StartTag;

    .line 64
    iget-boolean v2, v1, Lorg/jsoup/parser/Token$StartTag;->selfClosing:Z

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 71
    .end local v1    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 68
    .local v0, "endTag":Lorg/jsoup/parser/Token$EndTag;
    iget-object v2, v0, Lorg/jsoup/parser/Token$EndTag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    const-string v2, "Attributes incorrectly present on end tag"

    invoke-direct {p0, v2}, Lorg/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method emitCommentPending()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 179
    return-void
.end method

.method emitDoctypePending()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 187
    return-void
.end method

.method emitTagPending()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->finaliseTag()V

    .line 170
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 171
    return-void
.end method

.method eofError(Lorg/jsoup/parser/TokeniserState;)V
    .locals 4
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Ljava/util/List;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    const-string v2, "Unexpectedly reached end of file (EOF)"

    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;Lorg/jsoup/parser/TokeniserState;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    return-void
.end method

.method error(Lorg/jsoup/parser/TokeniserState;)V
    .locals 5
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Ljava/util/List;

    new-instance v1, Lorg/jsoup/parser/ParseError;

    const-string v2, "Unexpected character in input"

    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v4}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v4

    invoke-direct {v1, v2, v3, p1, v4}, Lorg/jsoup/parser/ParseError;-><init>(Ljava/lang/String;CLorg/jsoup/parser/TokeniserState;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_0
    return-void
.end method

.method getState()Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    return-object v0
.end method

.method isAppropriateEndTagToken()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Lorg/jsoup/parser/Token$StartTag;

    iget-object v1, v1, Lorg/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTrackErrors()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    return v0
.end method

.method read()Lorg/jsoup/parser/Token;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    if-nez v1, :cond_0

    .line 37
    const-string v1, "Self closing flag not acknowledged"

    invoke-direct {p0, v1}, Lorg/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->selfClosingFlagAcknowledged:Z

    .line 41
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {v1, p0, v2}, Lorg/jsoup/parser/TokeniserState;->read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->charBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Lorg/jsoup/parser/Token$Character;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    .line 51
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 50
    :cond_2
    iput-boolean v3, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 51
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    goto :goto_1
.end method

.method setTrackErrors(Z)V
    .locals 0
    .param p1, "trackErrors"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lorg/jsoup/parser/Tokeniser;->trackErrors:Z

    .line 207
    return-void
.end method

.method transition(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p1, "state"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 89
    return-void
.end method
