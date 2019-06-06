.class Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RESPropertyImagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 268
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 205
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_images_row_v7:I

    .line 206
    .local v1, "resource":I
    :goto_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-virtual {v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, "view":Landroid/view/View;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v2, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 208
    invoke-virtual {v2, p2}, Landroid/view/View;->setId(I)V

    .line 210
    sget v4, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    .local v0, "imageView":Landroid/widget/ImageView;
    instance-of v4, v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    if-eqz v4, :cond_0

    check-cast v0, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    .end local v0    # "imageView":Landroid/widget/ImageView;
    move-object v3, v0

    .line 213
    .local v3, "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    :cond_0
    if-eqz v3, :cond_1

    new-instance v4, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$1;

    invoke-direct {v4, p0, p2, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;ILnz/co/jsalibrary/android/widget/JSAZoomImageView;)V

    invoke-virtual {v3, v4}, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;->setListener(Lnz/co/jsalibrary/android/widget/JSAZoomImageView$ZoomImageViewListener;)V

    .line 227
    :cond_1
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v4

    if-nez v4, :cond_3

    .line 230
    :goto_1
    return-object v2

    .line 205
    .end local v1    # "resource":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    .restart local p1    # "pager":Landroid/view/View;
    :cond_2
    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_images_row:I

    goto :goto_0

    .line 228
    .end local p1    # "pager":Landroid/view/View;
    .restart local v1    # "resource":I
    .restart local v2    # "view":Landroid/view/View;
    .restart local v3    # "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    :cond_3
    invoke-virtual {p0, v2, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->updateItemBitmap(Landroid/view/View;I)V

    goto :goto_1
.end method

.method protected isInProgressChangeHandler(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isInProgress"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$PageEnabledViewPager;->setPagingEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 269
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 270
    return-void
.end method

.method protected updateItemBitmap(Landroid/view/View;I)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getRequestImageWidth()I

    move-result v15

    .line 235
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-virtual {v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->getRequestImageHeight()I

    move-result v2

    .line 236
    .local v2, "height":I
    sget v3, Lnz/co/realestate/android/lib/R$id;->imageview:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 237
    .local v4, "imageView":Landroid/widget/ImageView;
    instance-of v3, v4, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    if-eqz v3, :cond_1

    move-object v3, v4

    check-cast v3, Lnz/co/jsalibrary/android/widget/JSAZoomImageView;

    move-object/from16 v16, v3

    .line 238
    .local v16, "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    :goto_0
    sget v3, Lnz/co/realestate/android/lib/R$id;->progressbar:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    .line 239
    .local v14, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v4, :cond_0

    if-nez v14, :cond_2

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 237
    .end local v14    # "progressBar":Landroid/widget/ProgressBar;
    .end local v16    # "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 240
    .restart local v14    # "progressBar":Landroid/widget/ProgressBar;
    .restart local v16    # "zoomImageView":Lnz/co/jsalibrary/android/widget/JSAZoomImageView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v3

    move/from16 v0, p2

    invoke-static {v3, v0}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "url":Ljava/lang/String;
    new-instance v9, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1, v14}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter$2;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;Lnz/co/jsalibrary/android/widget/JSAZoomImageView;Landroid/widget/ProgressBar;)V

    .line 249
    .local v9, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    invoke-virtual {v14, v9}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;

    invoke-static {v8}, Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;->access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyImagesFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v8

    iget v8, v8, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x3e8

    invoke-virtual/range {v3 .. v13}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;JJ)V

    .line 252
    invoke-static {v4}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v14, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_2
.end method
