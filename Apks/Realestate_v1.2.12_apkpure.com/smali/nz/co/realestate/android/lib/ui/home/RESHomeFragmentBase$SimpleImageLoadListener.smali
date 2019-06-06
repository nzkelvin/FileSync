.class public Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;
.source "RESHomeFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SimpleImageLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;


# direct methods
.method protected constructor <init>(Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    .prologue
    .line 287
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 287
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;->onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase$SimpleImageLoadListener;->this$0:Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/home/RESHomeFragmentBase;->updateView()V

    .line 290
    return-void
.end method
