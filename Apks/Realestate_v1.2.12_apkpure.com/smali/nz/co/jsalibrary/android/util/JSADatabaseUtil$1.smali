.class final Lnz/co/jsalibrary/android/util/JSADatabaseUtil$1;
.super Ljava/lang/Object;
.source "JSADatabaseUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/util/JSADatabaseUtil;->emailDatabase(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
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
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p1, "item"    # Ljava/io/File;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/util/JSADatabaseUtil$1;->map(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
