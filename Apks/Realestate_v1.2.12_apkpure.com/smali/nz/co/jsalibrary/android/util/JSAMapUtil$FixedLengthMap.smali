.class public Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;
.super Ljava/util/LinkedHashMap;
.source "JSAMapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAMapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedLengthMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4c17e182a76d0c1cL


# instance fields
.field protected mMaxCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacity"    # I

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 30
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 31
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->mMaxCapacity:I

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 2
    .param p1, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    .line 36
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 37
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->mMaxCapacity:I

    .line 39
    invoke-virtual {p0, p2}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->putAll(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "maxCapacity"    # I
    .param p2, "leastRecentlyUsed"    # Z

    .prologue
    .line 44
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap<TK;TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 45
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->mMaxCapacity:I

    .line 46
    return-void
.end method

.method public constructor <init>(IZLjava/util/Map;)V
    .locals 2
    .param p1, "maxCapacity"    # I
    .param p2, "leastRecentlyUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap<TK;TV;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 51
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput p1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->mMaxCapacity:I

    .line 53
    invoke-virtual {p0, p3}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->putAll(Ljava/util/Map;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;, "Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->size()I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/util/JSAMapUtil$FixedLengthMap;->mMaxCapacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
