.class public Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESWestpacContactArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowWrapper"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mPhoneTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 70
    sget v0, Lnz/co/realestate/android/lib/R$id;->name_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mNameTextView:Landroid/widget/TextView;

    .line 71
    sget v0, Lnz/co/realestate/android/lib/R$id;->title_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mTitleTextView:Landroid/widget/TextView;

    .line 72
    sget v0, Lnz/co/realestate/android/lib/R$id;->phone_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mPhoneTextView:Landroid/widget/TextView;

    .line 73
    sget v0, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mPhoneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    .prologue
    .line 62
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method
