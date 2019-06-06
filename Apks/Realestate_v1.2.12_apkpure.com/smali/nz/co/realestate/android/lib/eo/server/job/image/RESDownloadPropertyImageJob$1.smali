.class final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$1;
.super Ljava/lang/Object;
.source "RESDownloadPropertyImageJob.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getAcceptableImage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction",
        "<",
        "Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$1;->filter(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)Z

    move-result v0

    return v0
.end method

.method public filter(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)Z
    .locals 6
    .param p1, "item"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    iget v1, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->id:I

    invoke-static {v1}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob;->getFileLocationFromDatabaseId(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->getImageDimensions(Ljava/io/File;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
