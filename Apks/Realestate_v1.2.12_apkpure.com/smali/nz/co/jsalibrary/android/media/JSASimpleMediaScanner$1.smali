.class Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$1;
.super Ljava/lang/Object;
.source "JSASimpleMediaScanner.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner;-><init>(Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$SimpleMediaScannerConnectionClient;Landroid/content/Context;[Ljava/io/File;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/media/JSASimpleMediaScanner$1;->map(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
