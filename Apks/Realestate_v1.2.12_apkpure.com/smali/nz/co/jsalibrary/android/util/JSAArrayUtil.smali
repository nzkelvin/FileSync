.class public abstract Lnz/co/jsalibrary/android/util/JSAArrayUtil;
.super Ljava/lang/Object;
.source "JSAArrayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;,
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;,
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;,
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;,
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;,
        Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/util/List;Ljava/lang/Object;II)Ljava/util/List;
    .locals 2
    .param p2, "startIndex"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-gtz p3, :cond_1

    .line 779
    :cond_0
    return-object p0

    .line 777
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 778
    add-int v1, p2, v0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static clone(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 372
    :goto_0
    return-object v0

    .line 370
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 371
    :cond_1
    monitor-enter p1

    .line 372
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clone([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "list":[Ljava/lang/Object;, "[TT;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 360
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "list cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_1
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 363
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    return-object v0
.end method

.method public static concat(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 481
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 486
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 489
    .local v0, "array":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    return-object v0
.end method

.method public static concat([D[D)[D
    .locals 4
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .prologue
    const/4 v3, 0x0

    .line 522
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 525
    .local v0, "array":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    return-object v0
.end method

.method public static concat([F[F)[F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v3, 0x0

    .line 513
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 516
    .local v0, "array":[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    return-object v0
.end method

.method public static concat([I[I)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v3, 0x0

    .line 495
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 498
    .local v0, "array":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    return-object v0
.end method

.method public static concat([J[J)[J
    .locals 4
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v3, 0x0

    .line 504
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 507
    .local v0, "array":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 467
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "a cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_2
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 471
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    return-object v0
.end method

.method public static contains([CC)Z
    .locals 3
    .param p0, "items"    # [C
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "item"    # C

    .prologue
    .line 260
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 262
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    .line 263
    :goto_1
    return v1

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([II)Z
    .locals 3
    .param p0, "items"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "item"    # I

    .prologue
    .line 239
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 241
    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    .line 242
    :goto_1
    return v1

    .line 240
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([JJ)Z
    .locals 5
    .param p0, "items"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "item"    # J

    .prologue
    .line 246
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 248
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 249
    :goto_1
    return v1

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "items cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-static {p1, p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 3
    .param p0, "items"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "item"    # Z

    .prologue
    .line 253
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 255
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    .line 256
    :goto_1
    return v1

    .line 254
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static copyOf([BI)[B
    .locals 3
    .param p0, "original"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 382
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_1
    new-array v0, p1, [B

    .line 385
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 3
    .param p0, "original"    # [C
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 418
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_1
    new-array v0, p1, [C

    .line 421
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3
    .param p0, "original"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 427
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_1
    new-array v0, p1, [D

    .line 430
    .local v0, "copy":[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 400
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_1
    new-array v0, p1, [I

    .line 403
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 3
    .param p0, "original"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 409
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_1
    new-array v0, p1, [J

    .line 412
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 445
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 448
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v2, 0x0

    .line 455
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 458
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 3
    .param p0, "original"    # [S
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 391
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_1
    new-array v0, p1, [S

    .line 394
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 3
    .param p0, "original"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newLength"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 436
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "original cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_1
    new-array v0, p1, [Z

    .line 439
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    return-object v0
.end method

.method public static count(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/Collection",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "item":Ljava/lang/Object;, "TT;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    :cond_0
    const/4 v0, 0x0

    .line 631
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 632
    .local v1, "listItem":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v1    # "listItem":Ljava/lang/Object;, "TT;"
    :cond_2
    return v0
.end method

.method public static count(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)I"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "item":Ljava/lang/Object;, "TT;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_0
    const/4 v0, 0x0

    .line 639
    .local v0, "count":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    .line 640
    .local v1, "listItem":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p0}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 639
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "listItem":Ljava/lang/Object;, "TT;"
    :cond_2
    return v0
.end method

.method public static difference(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "s1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "s2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s1 cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s2 cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 709
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 710
    return-object v0
.end method

.method public static filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "filter":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction<TT;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1068
    :cond_0
    return-object v1

    .line 1064
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1065
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1067
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;->filter(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1146
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1147
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1149
    .local v0, "item":Ljava/lang/Object;, "TS;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1150
    .local v1, "mapped":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_2

    .line 1151
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1153
    .end local v0    # "item":Ljava/lang/Object;, "TS;"
    .end local v1    # "mapped":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v2
.end method

.method public static filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1049
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "filter":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction<TT;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1054
    :cond_0
    return-object v1

    .line 1050
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 1053
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;->filter(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1129
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1130
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p0, v3

    .line 1132
    .local v0, "item":Ljava/lang/Object;, "TS;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1133
    .local v1, "mapped":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_2

    .line 1131
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1134
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1136
    .end local v0    # "item":Ljava/lang/Object;, "TS;"
    .end local v1    # "mapped":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v2
.end method

.method public static filterArray([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "filter":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1102
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "class cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1104
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v0, p0, v2

    .line 1106
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;->filter(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1107
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-static {v1, p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static filterInPlace(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "filter":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1082
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1083
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1084
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1086
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;->filter(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1087
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1089
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    return-void
.end method

.method public static find(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "find":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction<TT;>;"
    const/4 v1, 0x0

    .line 1378
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1382
    :goto_0
    return-object v0

    .line 1379
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "find cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1381
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    move-object v0, v1

    .line 1382
    goto :goto_0
.end method

.method public static find([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "find":Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction<TT;>;"
    const/4 v1, 0x0

    .line 1369
    if-nez p0, :cond_1

    move-object v0, v1

    .line 1373
    :cond_0
    :goto_0
    return-object v0

    .line 1370
    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "find cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    :cond_2
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p0, v2

    .line 1372
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$FindFunction;->matches(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    move-object v0, v1

    .line 1373
    goto :goto_0
.end method

.method public static flatten(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 616
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 618
    .local v0, "item":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/List;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->flatten(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 619
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method

.method public static flatten(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->flatten(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fromPrimitive([Z)[Ljava/lang/Boolean;
    .locals 4
    .param p0, "list"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 214
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .line 216
    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 217
    aget-boolean v2, p0, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    return-object v1
.end method

.method public static fromPrimitive([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "list"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 198
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .line 200
    .local v1, "result":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 201
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-object v1
.end method

.method public static fromPrimitive([I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "list"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .line 168
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 169
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return-object v1
.end method

.method public static fromPrimitive([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "list"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 184
    .local v1, "result":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 185
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    return-object v1
.end method

.method public static fromPrimitiveList([D)Ljava/util/ArrayList;
    .locals 4
    .param p0, "list"    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 209
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    return-object v1
.end method

.method public static fromPrimitiveList([I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "list"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 177
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    return-object v1
.end method

.method public static fromPrimitiveList([J)Ljava/util/ArrayList;
    .locals 4
    .param p0, "list"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 193
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-object v1
.end method

.method public static fromPrimitiveList([Z)Ljava/util/ArrayList;
    .locals 4
    .param p0, "list"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 225
    aget-boolean v2, p0, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v1
.end method

.method public static generate(ILnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, "generation":Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction<TT;>;"
    if-gez p0, :cond_0

    new-instance v2, Ljava/lang/NegativeArraySizeException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1425
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "generation cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1426
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1427
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 1428
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$GenerationFunction;->generate(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1429
    :cond_2
    return-object v1
.end method

.method public static getLongestCommonPrefix(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;",
            "Ljava/util/List",
            "<+TT;>;)",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    const/4 v4, 0x0

    .line 1486
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1487
    .local v1, "minLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1488
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 1489
    :goto_1
    return-object v2

    .line 1487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    :cond_1
    invoke-interface {p0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public static indexOf(B[B)I
    .locals 3
    .param p0, "item"    # B
    .param p1, "items"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 295
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 297
    aget-byte v1, p1, v0

    if-ne v1, p0, :cond_1

    .line 298
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 296
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf(I[I)I
    .locals 3
    .param p0, "item"    # I
    .param p1, "items"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 283
    aget v1, p1, v0

    if-ne v1, p0, :cond_1

    .line 284
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 282
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf(J[J)I
    .locals 4
    .param p0, "item"    # J
    .param p2, "items"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 290
    aget-wide v2, p2, v0

    cmp-long v1, v2, p0

    if-nez v1, :cond_1

    .line 291
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 289
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)I"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "item":Ljava/lang/Object;, "TT;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 273
    aget-object v1, p1, v0

    if-ne v1, p0, :cond_1

    .line 277
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 274
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_3

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_3
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 277
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "indexOf":Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction<TT;>;"
    const/4 v2, -0x1

    .line 1405
    if-nez p0, :cond_1

    move v0, v2

    .line 1411
    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_0
    :goto_0
    return v0

    .line 1406
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "index function cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1408
    :cond_2
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    check-cast p0, Ljava/util/List;

    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v1, p0

    .line 1409
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1410
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1408
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    move v0, v2

    .line 1411
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "indexOf":Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction<TT;>;"
    const/4 v1, -0x1

    .line 1395
    if-nez p0, :cond_1

    move v0, v1

    .line 1400
    :cond_0
    :goto_0
    return v0

    .line 1396
    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "index function cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1399
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$IndexOfFunction;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1400
    goto :goto_0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "s1":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "s2":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "s1 cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "s2 cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 691
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 692
    .local v1, "x":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    .end local v1    # "x":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1446
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "separator"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "separator cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "builder":Ljava/lang/StringBuilder;
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    check-cast p0, Ljava/util/List;

    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v2, p0

    .line 321
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 322
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 320
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 325
    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "separator"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TT;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "separator cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, "builder":Ljava/lang/StringBuilder;
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast p0, Ljava/util/List;

    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    move-object v2, p0

    .line 348
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 349
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 352
    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "separator"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "separator cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 310
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/lang/String;
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "separator"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TT;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "separator cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 335
    aget-object v2, p0, v1

    invoke-interface {p2, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1180
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1185
    :cond_0
    return-object v1

    .line 1181
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1182
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1184
    .local v0, "item":Ljava/lang/Object;, "TS;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1350
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 1356
    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    :cond_0
    return-object v2

    .line 1351
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    :cond_1
    if-nez p1, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1352
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_3

    check-cast p0, Ljava/util/List;

    .end local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    move-object v1, p0

    .line 1354
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TS;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1355
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;->map(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1353
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TS;>;"
    .restart local p0    # "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1166
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1171
    :cond_0
    return-object v1

    .line 1167
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1168
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 1170
    .local v0, "item":Ljava/lang/Object;, "TS;"
    invoke-interface {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction",
            "<TS;TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction<TS;TT;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1341
    :cond_0
    return-object v1

    .line 1337
    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1338
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1340
    aget-object v2, p0, v0

    invoke-interface {p1, v2, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapIndexedFunction;->map(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mapPrimitiveBoolean(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 1317
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1318
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1319
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [Z

    .line 1320
    .local v2, "result":[Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1321
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    :cond_2
    return-object v2
.end method

.method public static mapPrimitiveBoolean([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 1303
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1304
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1305
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Z

    .line 1306
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1307
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1308
    :cond_2
    return-object v1
.end method

.method public static mapPrimitiveInt(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1252
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1253
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1254
    .local v2, "result":[I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1255
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    :cond_2
    return-object v2
.end method

.method public static mapPrimitiveInt([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1237
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1238
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1239
    :cond_1
    array-length v2, p0

    new-array v1, v2, [I

    .line 1240
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1241
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :cond_2
    return-object v1
.end method

.method public static mapPrimitiveLong(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1284
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1285
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1286
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [J

    .line 1287
    .local v2, "result":[J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1288
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
    :cond_2
    return-object v2
.end method

.method public static mapPrimitiveLong([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1270
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1271
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1272
    :cond_1
    array-length v2, p0

    new-array v1, v2, [J

    .line 1273
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1274
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1275
    :cond_2
    return-object v1
.end method

.method public static mapToArray(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "items cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1218
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "map cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1219
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "class cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1220
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 1221
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1222
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TS;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_3
    return-object v2
.end method

.method public static mapToArray([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">([TS;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, "items":[Ljava/lang/Object;, "[TS;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "items cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1203
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1204
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "class cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1205
    :cond_2
    array-length v2, p0

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1206
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1207
    aget-object v2, p0, v0

    invoke-interface {p1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1208
    :cond_3
    return-object v1
.end method

.method public static max(Ljava/util/List;)Ljava/lang/Number;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "numbers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numbers cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    :cond_0
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {p0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object p0

    .line 859
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numbers cannot have zero length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 861
    .local v1, "max":Ljava/lang/Number;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 862
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 863
    .local v2, "n":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_2

    .line 861
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "max":Ljava/lang/Number;
    check-cast v1, Ljava/lang/Number;

    .restart local v1    # "max":Ljava/lang/Number;
    goto :goto_1

    .line 867
    .end local v2    # "n":Ljava/lang/Number;
    :cond_3
    return-object v1
.end method

.method public static min(Ljava/util/List;)Ljava/lang/Number;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 839
    .local p0, "numbers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numbers cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 840
    :cond_0
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {p0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object p0

    .line 841
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numbers cannot have zero length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 842
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 843
    .local v1, "min":Ljava/lang/Number;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 844
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 845
    .local v2, "n":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_2

    .line 843
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "min":Ljava/lang/Number;
    check-cast v1, Ljava/lang/Number;

    .restart local v1    # "min":Ljava/lang/Number;
    goto :goto_1

    .line 849
    .end local v2    # "n":Ljava/lang/Number;
    :cond_3
    return-object v1
.end method

.method public static orderByAppearance(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "orderedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "items cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 807
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ordered items cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 808
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 810
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->count(Ljava/lang/Object;Ljava/util/Collection;)I

    move-result v2

    .line 811
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 812
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "n":I
    :cond_3
    return-object v3
.end method

.method public static orderByAppearance([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "orderedItems":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "items cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 824
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ordered items cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 825
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 827
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {v1, p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->count(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 828
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 829
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "n":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    return-object v4
.end method

.method public static remove(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "item":Ljava/lang/Object;, "TT;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 536
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method public static removeDuplicates(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "collection cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 951
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static removeDuplicatesInPlace(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->removeDuplicatesInPlace(Ljava/util/Collection;Z)V

    .line 967
    return-void
.end method

.method public static removeDuplicatesInPlace(Ljava/util/Collection;Z)V
    .locals 2
    .param p1, "keepFirstUnique"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->removeDuplicatesInPlaceKeepFirstUnique(Ljava/util/Collection;)V

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->removeDuplicatesInPlaceKeepLastUnique(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static removeDuplicatesInPlaceKeepFirstUnique(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "collection cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1001
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1002
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1003
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1004
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1005
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1006
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1008
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    return-void
.end method

.method private static removeDuplicatesInPlaceKeepLastUnique(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "collection cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1025
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1026
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1027
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1030
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1031
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1032
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1033
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1034
    .local v0, "count":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1035
    :cond_3
    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1037
    .end local v0    # "count":I
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    return-void
.end method

.method public static reverse([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "items cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 546
    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "class cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 547
    :cond_1
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->clone([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 548
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v3, p0

    .line 550
    .local v3, "length":I
    div-int/lit8 v1, v3, 0x2

    .line 551
    .local v1, "distance":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 552
    aget-object v4, v0, v2

    .line 553
    .local v4, "temp":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    aget-object v5, v0, v5

    aput-object v5, v0, v2

    .line 554
    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    aput-object v4, v0, v5

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v4    # "temp":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object v0
.end method

.method public static reverseInPlace([I)V
    .locals 6
    .param p0, "items"    # [I

    .prologue
    .line 564
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "items cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_0
    array-length v2, p0

    .line 566
    .local v2, "length":I
    div-int/lit8 v0, v2, 0x2

    .line 568
    .local v0, "distance":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 569
    aget v3, p0, v1

    .line 570
    .local v3, "temp":I
    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v1

    aget v4, p0, v4

    aput v4, p0, v1

    .line 571
    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v1

    aput v3, p0, v4

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v3    # "temp":I
    :cond_1
    return-void
.end method

.method public static set(Ljava/util/List;ILjava/util/List;II)V
    .locals 4
    .param p1, "sourceIndex"    # I
    .param p3, "destinationIndex"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I",
            "Ljava/util/List",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "destination":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 768
    :cond_0
    return-void

    .line 763
    :cond_1
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    .line 764
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, p1, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 765
    add-int v2, p3, v0

    sub-int v1, v2, p1

    .line 766
    .local v1, "j":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static split(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "targetSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 791
    add-int v2, v0, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    add-int/2addr v0, p1

    goto :goto_0

    .line 793
    :cond_1
    return-object v1
.end method

.method public static subList(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;II)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_0
    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_1

    if-gt p1, p2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le p2, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection, start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 926
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 927
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 928
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 929
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 930
    :cond_3
    return-object v1
.end method

.method public static subList([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "list":[Ljava/lang/Object;, "[TT;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_0
    if-ltz p1, :cond_1

    array-length v2, p0

    if-gt p1, v2, :cond_1

    if-gt p1, p2, :cond_1

    array-length v2, p0

    if-le p2, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid selection, start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    :cond_2
    sub-int v2, p2, p1

    invoke-static {p3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 918
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sub-int v2, p2, p1

    if-ge v0, v2, :cond_3

    .line 919
    add-int v2, p1, v0

    aget-object v2, p0, v2

    aput-object v2, v1, v0

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    :cond_3
    return-object v1
.end method

.method public static sum(Ljava/util/Collection;)Ljava/lang/Number;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 885
    .local p0, "numbers":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "numbers cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 886
    :cond_0
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {p0, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object p0

    .line 887
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 891
    :goto_0
    return-object v3

    .line 888
    :cond_1
    const-wide/16 v0, 0x0

    .line 889
    .local v0, "count":D
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 890
    .local v2, "number":Ljava/lang/Number;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v0, v4

    goto :goto_1

    .line 891
    .end local v2    # "number":Ljava/lang/Number;
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0
.end method

.method public static sum(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Collection",
            "<TS;>;",
            "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
            "<TS;TT;>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<TS;>;"
    .local p1, "map":Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;, "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction<TS;TT;>;"
    invoke-static {p0, p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->sum(Ljava/util/Collection;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 34
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 66
    .end local p0    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :goto_0
    return-object p0

    .line 65
    .restart local p0    # "list":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 46
    :cond_0
    return-object v1

    .line 43
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 45
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "list"    # [Ljava/lang/Double;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    array-length v2, p0

    new-array v1, v2, [D

    .line 126
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 127
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 4
    .param p0, "list"    # [Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    array-length v2, p0

    new-array v1, v2, [I

    .line 88
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 89
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "list"    # [Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    array-length v2, p0

    new-array v1, v2, [J

    .line 107
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 108
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-object v1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 4
    .param p0, "list"    # [Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 143
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "list cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Z

    .line 145
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 146
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-object v1
.end method

.method public static toPrimitiveBoolean(Ljava/util/Collection;)[Z
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "list cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [Z

    .line 153
    .local v2, "result":[Z
    const/4 v0, 0x0

    .line 154
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 155
    .local v1, "item":Z
    aput-boolean v1, v2, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    goto :goto_0

    .line 158
    .end local v1    # "item":Z
    :cond_1
    return-object v2
.end method

.method public static toPrimitiveDouble(Ljava/util/Collection;)[D
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "list cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v1, v4, [D

    .line 134
    .local v1, "result":[D
    const/4 v0, 0x0

    .line 135
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 136
    .local v2, "item":D
    aput-wide v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_0

    .line 139
    .end local v2    # "item":D
    :cond_1
    return-object v1
.end method

.method public static toPrimitiveInt(Ljava/util/Collection;)[I
    .locals 5
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "list cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 96
    .local v2, "result":[I
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 98
    .local v1, "item":I
    aput v1, v2, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    .end local v1    # "item":I
    :cond_1
    return-object v2
.end method

.method public static toPrimitiveLong(Ljava/util/Collection;)[J
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "list cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v1, v4, [J

    .line 115
    .local v1, "result":[J
    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 117
    .local v2, "item":J
    aput-wide v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto :goto_0

    .line 120
    .end local v2    # "item":J
    :cond_1
    return-object v1
.end method

.method public static toSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 78
    :cond_0
    return-object v1

    .line 75
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 77
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static trim(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 725
    :goto_0
    return-object v0

    .line 724
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 725
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static trim([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 734
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 739
    :goto_0
    return-object v0

    .line 735
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 736
    :cond_1
    array-length v1, p0

    if-lt p1, v1, :cond_2

    invoke-static {p0, p2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->clone([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 737
    :cond_2
    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 738
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "s1":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "s2":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p2, "function":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction<TT;>;"
    const/4 v4, 0x0

    .line 667
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "s1 cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "s2 cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :cond_1
    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "function cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_2
    new-instance v1, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;

    invoke-direct {v1, p2}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;-><init>(Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashFunction;)V

    .line 671
    .local v1, "map":Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap<TT;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0, v4}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 673
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 674
    .restart local v0    # "item":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0, v4}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 675
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-virtual {v1}, Lnz/co/jsalibrary/android/util/JSAMapUtil$ProxyHashMap;->keyCollection()Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "s1":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "s2":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s1 cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s2 cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 657
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 658
    return-object v0
.end method
