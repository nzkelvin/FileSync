.class final Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$2;
.super Ljava/lang/Object;
.source "RESDownloadPropertyImageJob.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    check-cast p2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadPropertyImageJob$2;->compare(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)I

    move-result v0

    return v0
.end method

.method public compare(Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;)I
    .locals 2
    .param p1, "t1"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;
    .param p2, "t2"    # Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;

    .prologue
    .line 194
    iget-object v0, p1, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/database/RESDbImage$Image;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/util/JSAIntegerUtil;->compareTo(II)I

    move-result v0

    return v0
.end method
