.class public Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;
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
    name = "NonNullFilterFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
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
    .line 24
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
