.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "RESPropertyInspectionPhotosArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Ljava/lang/String;",
        "Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;

    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_inspection_photo_row:I

    invoke-direct {p0, v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;Ljava/lang/String;)V

    return-void
.end method

.method protected updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;Ljava/lang/String;)V
    .locals 7
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 33
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getInspectionImagesFolder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->buildPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "url":Ljava/lang/String;
    sget v4, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_WIDTH:I

    sget v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->loadImageFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 38
    .local v2, "rotatedBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lnz/co/jsalibrary/android/util/JSAImageUtil;->rotateBitmapExifOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 41
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;->access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v2, :cond_0

    .end local v2    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    return-void

    .restart local v2    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v2, v0

    .line 41
    goto :goto_1

    .line 40
    :catch_0
    move-exception v4

    goto :goto_0
.end method
