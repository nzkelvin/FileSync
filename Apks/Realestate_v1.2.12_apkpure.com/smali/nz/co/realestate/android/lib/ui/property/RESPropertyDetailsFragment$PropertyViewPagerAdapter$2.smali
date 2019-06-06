.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;
.source "RESPropertyDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->updateItemBitmap(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    .prologue
    .line 485
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;->this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 485
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;->onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 487
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 488
    return-void
.end method
