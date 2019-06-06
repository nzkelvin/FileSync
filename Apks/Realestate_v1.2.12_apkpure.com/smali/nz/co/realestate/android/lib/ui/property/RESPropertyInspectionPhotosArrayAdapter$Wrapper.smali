.class public Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESPropertyInspectionPhotosArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 52
    sget v0, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;->mImageView:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;

    .prologue
    .line 48
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter$Wrapper;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method
