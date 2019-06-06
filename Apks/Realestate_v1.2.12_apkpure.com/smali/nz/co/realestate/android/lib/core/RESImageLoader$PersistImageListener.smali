.class public final Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;
.super Ljava/lang/Object;
.source "RESImageLoader.java"

# interfaces
.implements Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/core/RESImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersistImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFadeOnceOnlyImages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->mFadeOnceOnlyImages:Ljava/util/Set;

    .line 168
    return-void
.end method


# virtual methods
.method public hasFadedInBefore(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;)Z
    .locals 1
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    .prologue
    .line 185
    iget-object v0, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->mFadeOnceOnlyImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onAppliedJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->onAppliedJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onAppliedJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 1
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 177
    iget-object v0, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->mFadeOnceOnlyImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public bridge synthetic onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    return-void
.end method

.method public bridge synthetic onDesiredJobItemSet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->onDesiredJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onDesiredJobItemSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 1
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v0, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->mFadeOnceOnlyImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 162
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->onFailure(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;)V
    .locals 1
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v0, p0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;->mFadeOnceOnlyImages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method
