.class Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RESPropertyInspectionImagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimplePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;


# direct methods
.method private constructor <init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;
    .param p2, "x1"    # Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;-><init>(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 156
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 20
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-virtual {v14}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    sget v15, Lnz/co/realestate/android/lib/R$layout;->property_inspection_image_row:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 127
    .local v13, "view":Landroid/view/View;
    sget v14, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 128
    .local v8, "imageView":Landroid/widget/ImageView;
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInspectionImagesFolder()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-static {v14}, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;->access$100(Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;)Ljava/util/List;

    move-result-object v14

    move/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    invoke-static {v15}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, "url":Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 132
    .local v6, "exif":Landroid/media/ExifInterface;
    const-string v14, "ImageWidth"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9

    .line 133
    .local v9, "imageWidth":I
    const-string v14, "ImageLength"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 134
    .local v7, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity$SimplePagerAdapter;->this$0:Lnz/co/realestate/android/lib/ui/RESPropertyInspectionImagesActivity;

    invoke-static {v14}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayDimensions(Landroid/content/Context;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v3

    .line 135
    .local v3, "dimens":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 136
    .local v5, "displayWidth":I
    invoke-virtual {v3}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    .local v4, "displayHeight":I
    int-to-double v14, v5

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    int-to-double v0, v4

    move-wide/from16 v16, v0

    int-to-double v0, v7

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 138
    .local v10, "ratio":D
    int-to-double v14, v9

    mul-double/2addr v14, v10

    double-to-int v14, v14

    int-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-int v15, v0

    invoke-static {v12, v14, v15}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 139
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const-string v14, "Orientation"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v2, v14}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->rotateBitmapExifOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 140
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "dimens":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "displayHeight":I
    .end local v5    # "displayWidth":I
    .end local v6    # "exif":Landroid/media/ExifInterface;
    .end local v7    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v10    # "ratio":D
    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 145
    return-object v13

    .line 142
    .restart local p1    # "pager":Landroid/view/View;
    :catch_0
    move-exception v14

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 157
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 158
    return-void
.end method
