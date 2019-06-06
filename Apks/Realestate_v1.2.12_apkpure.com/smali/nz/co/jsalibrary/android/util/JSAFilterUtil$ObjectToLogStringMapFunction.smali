.class public final Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction;
.super Ljava/lang/Object;
.source "JSAFilterUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectToLogStringMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction<TT;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction;->map(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction;, "Lnz/co/jsalibrary/android/util/JSAFilterUtil$ObjectToLogStringMapFunction<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
