.class Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;
.super Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;
.source "RESPropertyImagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->updateItemBitmap(Landroid/view/View;I)V
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
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;Lnz/co/jsalibrary/android/widget/JSAZoomImageView;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    .prologue
    .line 242
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->this$1:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBitmapSet(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapSet(Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "jobItem"    # Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 244
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$zoomImageView:Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    invoke-virtual {v3}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->getInitialScaleFactor()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setScaleFactor(FFF)V

    .line 245
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    return-void
.end method
