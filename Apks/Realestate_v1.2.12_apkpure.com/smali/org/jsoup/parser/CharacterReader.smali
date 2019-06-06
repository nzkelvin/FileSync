.class Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'


# instance fields
.field private final input:Ljava/lang/String;

.field private final length:I

.field private mark:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 17
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 18
    const-string v0, "\r\n?"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 22
    return-void
.end method


# virtual methods
.method advance()V
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 48
    return-void
.end method

.method consume()C
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xffff

    .line 38
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 39
    return v0

    .line 37
    .end local v0    # "val":C
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 132
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 135
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 139
    .end local v0    # "c":C
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 120
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3

    .line 123
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 127
    .end local v0    # "c":C
    :cond_3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 107
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 110
    :cond_1
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 115
    .end local v0    # "c":C
    :cond_2
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 63
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 64
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 69
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 80
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 8
    .param p1, "seq"    # [C

    .prologue
    .line 85
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 87
    .local v5, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 89
    .local v1, "c":C
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-char v4, v0, v2

    .line 90
    .local v4, "seek":C
    if-ne v4, v1, :cond_1

    .line 96
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "seek":C
    :cond_0
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v6, v5, :cond_3

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6

    .line 89
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "seek":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v4    # "seek":C
    :cond_2
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 96
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    const-string v6, ""

    goto :goto_2
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 102
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "loScan":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "hiScan":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method current()C
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mark()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 52
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method varargs matchesAny([C)Z
    .locals 8
    .param p1, "seq"    # [C

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v5

    .line 159
    :cond_1
    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 160
    .local v1, "c":C
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v4, v0, v2

    .line 161
    .local v4, "seek":C
    if-ne v4, v1, :cond_2

    .line 162
    const/4 v5, 0x1

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method matchesDigit()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method matchesLetter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method pos()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rewindToMark()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 44
    return-void
.end method
