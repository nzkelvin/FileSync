.class public Lnz/co/jsalibrary/android/util/JSARandomUtil;
.super Ljava/lang/Object;
.source "JSARandomUtil.java"


# static fields
.field private static HEX_CHARACTERS:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized initialiseHexCharacters()V
    .locals 5

    .prologue
    .line 13
    const-class v2, Lnz/co/jsalibrary/android/util/JSARandomUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 19
    .local v0, "i":I
    :cond_0
    monitor-exit v2

    return-void

    .line 14
    .end local v0    # "i":I
    :cond_1
    const/16 v1, 0x24

    :try_start_1
    new-array v1, v1, [C

    sput-object v1, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C

    .line 15
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 16
    sget-object v1, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 18
    sget-object v1, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C

    add-int/lit8 v3, v0, 0xa

    add-int/lit8 v4, v0, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static nextInt(Ljava/util/Random;II)I
    .locals 1
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 58
    if-eqz p0, :cond_0

    if-lt p1, p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :cond_1
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public static nextInt(Ljava/util/Random;II[I)I
    .locals 2
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "exclude"    # [I

    .prologue
    .line 64
    if-eqz p0, :cond_0

    if-ge p1, p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 65
    :cond_1
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextInt(Ljava/util/Random;II)I

    move-result v0

    .line 66
    .local v0, "result":I
    :goto_0
    invoke-static {p3, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextInt(Ljava/util/Random;II)I

    move-result v0

    goto :goto_0

    .line 68
    :cond_2
    return v0
.end method

.method public static nextLong(Ljava/util/Random;J)J
    .locals 13
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 106
    if-eqz p0, :cond_0

    cmp-long v4, p1, v10

    if-gtz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 109
    :cond_1
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    shl-long/2addr v4, v8

    ushr-long v0, v4, v8

    .line 110
    .local v0, "bits":J
    rem-long v2, v0, p1

    .line 111
    .local v2, "val":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x1

    sub-long v6, p1, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-ltz v4, :cond_1

    .line 112
    return-wide v2
.end method

.method public static nextLong(Ljava/util/Random;JJ)J
    .locals 3
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "min"    # J
    .param p3, "max"    # J

    .prologue
    .line 91
    if-eqz p0, :cond_0

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_1
    sub-long v0, p3, p1

    invoke-static {p0, v0, v1}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextLong(Ljava/util/Random;J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public static nextLong(Ljava/util/Random;JJ[J)J
    .locals 3
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "min"    # J
    .param p3, "max"    # J
    .param p5, "exclude"    # [J

    .prologue
    .line 97
    if-eqz p0, :cond_0

    cmp-long v2, p1, p3

    if-gez v2, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 98
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    .line 99
    .local v0, "result":J
    :goto_0
    invoke-static {p5, v0, v1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->contains([JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-static {p0, p1, p2, p3, p4}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    goto :goto_0

    .line 101
    :cond_2
    return-wide v0
.end method

.method public static randomHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->randomHexString(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomHexString(ILjava/util/Random;)Ljava/lang/String;
    .locals 4
    .param p0, "length"    # I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 30
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 31
    :cond_0
    invoke-static {}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->initialiseHexCharacters()V

    .line 32
    new-array v1, p0, [C

    .line 33
    .local v1, "string":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 34
    sget-object v2, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C

    sget-object v3, Lnz/co/jsalibrary/android/util/JSARandomUtil;->HEX_CHARACTERS:[C

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static randomInt(II)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p0, p1}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextInt(Ljava/util/Random;II)I

    move-result v0

    return v0
.end method

.method public static randomInt(II[I)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "exclude"    # [I

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextInt(Ljava/util/Random;II[I)I

    move-result v0

    return v0
.end method

.method public static randomLong(JJ)J
    .locals 2
    .param p0, "min"    # J
    .param p2, "max"    # J

    .prologue
    .line 77
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static randomLong(JJ[J)J
    .locals 8
    .param p0, "min"    # J
    .param p2, "max"    # J
    .param p4, "exclude"    # [J

    .prologue
    .line 82
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lnz/co/jsalibrary/android/util/JSARandomUtil;->nextLong(Ljava/util/Random;JJ[J)J

    move-result-wide v0

    return-wide v0
.end method
