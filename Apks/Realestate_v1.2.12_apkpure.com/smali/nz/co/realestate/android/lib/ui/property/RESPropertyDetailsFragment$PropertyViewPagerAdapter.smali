.class Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RESPropertyDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 506
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 507
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 513
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v0

    iget-object v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 502
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 460
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 474
    .end local p1    # "pager":Landroid/view/View;
    :goto_0
    return-object v1

    .line 461
    .restart local p1    # "pager":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$layout;->property_details_image_row:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "view":Landroid/view/View;
    sget v2, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 463
    .local v0, "imageView":Landroid/widget/ImageView;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v1, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 464
    invoke-virtual {v1, p2}, Landroid/view/View;->setId(I)V

    .line 466
    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    invoke-virtual {p0, v1, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->updateItemBitmap(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 510
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 514
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 515
    return-void
.end method

.method public updateItemBitmap(Landroid/view/View;I)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 478
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    sget v1, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 480
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v1, Lnz/co/realestate/android/lib/R$id;->progressbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ProgressBar;

    .line 481
    .local v12, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v2, :cond_0

    if-eqz v12, :cond_0

    .line 482
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v1

    invoke-static {v1, p2}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;I)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "url":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v0

    .line 485
    .local v0, "defaultDisplayWidth":I
    new-instance v7, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;

    invoke-direct {v7, p0, v12}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter$2;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;Landroid/widget/ProgressBar;)V

    .line 491
    .local v7, "listener":Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener;, "Lnz/co/jsalibrary/android/app/JSAImageLoader$SimpleImageLoadListener<Lnz/co/realestate/android/lib/eo/server/job/image/RESDownloadImageJob$DownloadConfig;>;"
    invoke-virtual {v12, v7}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 492
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment$PropertyViewPagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;

    .line 493
    invoke-static {v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;->access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-result-object v6

    iget v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    .line 492
    invoke-virtual/range {v1 .. v11}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;JJ)V

    .line 494
    invoke-static {v2}, Lnz/co/realestate/android/lib/core/RESImageLoader;->isImageLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
