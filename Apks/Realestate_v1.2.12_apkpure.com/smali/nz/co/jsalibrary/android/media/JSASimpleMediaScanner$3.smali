.class final Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$3;
.super Ljava/lang/Object;
.source "JSASimpleMediaScanner.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;->removeFromMediaStore(Landroid/content/Context;[Ljava/io/File;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$3;->map(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/io/File;

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
