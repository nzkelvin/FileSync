.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final ESC:C = '\\'


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 21
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private remainingLength()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 291
    .local v3, "last":C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-char v1, v0, v2

    .line 292
    .local v1, "c":C
    if-ne v1, v6, :cond_1

    .line 293
    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_0

    .line 294
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    :goto_1
    move v3, v1

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 300
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public addFirst(Ljava/lang/Character;)V
    .locals 1
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TokenQueue;->addFirst(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public addFirst(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 61
    return-void
.end method

.method public advance()V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 147
    :cond_0
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .locals 5
    .param p1, "open"    # C
    .param p2, "close"    # C

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "accum":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 264
    .local v2, "depth":I
    const/4 v3, 0x0

    .line 267
    .local v3, "last":C
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 268
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 269
    .local v1, "c":Ljava/lang/Character;
    if-eqz v3, :cond_2

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_3

    .line 270
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    add-int/lit8 v2, v2, 0x1

    .line 276
    :cond_3
    :goto_1
    if-lez v2, :cond_4

    if-eqz v3, :cond_4

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 279
    if-gtz v2, :cond_0

    goto :goto_0

    .line 272
    :cond_5
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 243
    return-object v0
.end method

.method public chompToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 249
    return-object v0
.end method

.method public consume()C
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue did not match expected sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .local v0, "len":I
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 172
    return-void
.end method

.method public consumeAttributeKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 371
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 371
    :array_0
    .array-data 2
        0x2ds
        0x5fs
        0x3as
    .end array-data
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 359
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 362
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 359
    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 346
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    :array_0
    .array-data 2
        0x7cs
        0x5fs
        0x2ds
    .end array-data
.end method

.method public consumeTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 333
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 336
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 333
    :array_0
    .array-data 2
        0x3as
        0x5fs
        0x2ds
    .end array-data
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 186
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    .line 223
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 224
    .local v1, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method public consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 191
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 192
    .local v4, "start":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "first":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    .local v0, "canScan":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    :cond_0
    iget-object v5, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "data":Ljava/lang/String;
    return-object v1

    .line 198
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_4

    .line 199
    iget-object v5, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int v3, v5, v6

    .line 200
    .local v3, "skip":I
    if-nez v3, :cond_2

    .line 201
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 202
    :cond_2
    if-gez v3, :cond_3

    .line 203
    iget-object v5, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 205
    :cond_3
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 208
    .end local v3    # "skip":I
    :cond_4
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0
.end method

.method public consumeWhitespace()Z
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "seen":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return v0
.end method

.method public consumeWord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 320
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 321
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 323
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    const/4 v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public varargs matchesAny([C)Z
    .locals 7
    .param p1, "seq"    # [C

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v4

    .line 99
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 100
    .local v1, "c":C
    iget-object v5, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v6, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_2

    .line 101
    const/4 v4, 0x1

    goto :goto_0

    .line 99
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # [Ljava/lang/String;

    .prologue
    .line 88
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 89
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const/4 v4, 0x1

    .line 92
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 88
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public matchesCS(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public matchesStartTag()Z
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesWhitespace()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesWord()Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peek()C
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public remainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v0, "accum":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
