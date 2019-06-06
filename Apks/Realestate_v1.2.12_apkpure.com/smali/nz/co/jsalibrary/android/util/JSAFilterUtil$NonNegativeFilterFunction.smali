.class public Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;
.super Ljava/lang/Object;
.source "JSAFilterUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonNegativeFilterFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Number;)Z
    .locals 6
    .param p1, "item"    # Ljava/lang/Number;

    .prologue
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction<TT;>;"
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction<TT;>;"
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNegativeFilterFunction;->filter(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method
