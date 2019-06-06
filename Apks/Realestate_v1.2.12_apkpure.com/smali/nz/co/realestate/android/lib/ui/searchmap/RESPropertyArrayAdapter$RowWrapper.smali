.class public Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.source "RESPropertyArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowWrapper"
.end annotation


# instance fields
.field public mAddressTextView:Landroid/widget/TextView;

.field public mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

.field private mHiddenExpiredSashImageView:Landroid/widget/ImageView;

.field private mHiddenExpiredSashViewStub:Landroid/view/ViewStub;

.field private mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

.field private mHiddenOpenHomeSashViewStub:Landroid/view/ViewStub;

.field private mHiddenSoldSashImageView:Landroid/widget/ImageView;

.field private mHiddenSoldSashViewStub:Landroid/view/ViewStub;

.field private mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

.field private mHiddenWidthdrawnSashViewStub:Landroid/view/ViewStub;

.field public mImageView:Landroid/widget/ImageView;

.field public mPriceTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;-><init>(Landroid/view/View;)V

    .line 196
    sget v0, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    .line 197
    sget v0, Lnz/co/realestate/android/lib/R$id;->address_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mAddressTextView:Landroid/widget/TextView;

    .line 198
    sget v0, Lnz/co/realestate/android/lib/R$id;->price_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mPriceTextView:Landroid/widget/TextView;

    .line 199
    sget v0, Lnz/co/realestate/android/lib/R$id;->furnishing_details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    .line 201
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    .line 202
    sget v0, Lnz/co/realestate/android/lib/R$id;->open_home_sash_viewstub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashViewStub:Landroid/view/ViewStub;

    .line 204
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    .line 205
    sget v0, Lnz/co/realestate/android/lib/R$id;->sold_sash_viewstub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashViewStub:Landroid/view/ViewStub;

    .line 207
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    .line 208
    sget v0, Lnz/co/realestate/android/lib/R$id;->withdrawn_sash_viewstub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashViewStub:Landroid/view/ViewStub;

    .line 210
    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    .line 211
    sget v0, Lnz/co/realestate/android/lib/R$id;->expired_sash_viewstub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashViewStub:Landroid/view/ViewStub;

    .line 212
    return-void
.end method


# virtual methods
.method public getExpiredSashImageView(Z)Landroid/widget/ImageView;
    .locals 1
    .param p1, "inflate"    # Z

    .prologue
    .line 236
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    .line 239
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenExpiredSashImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getOpenHomeSashImageView(Z)Landroid/widget/ImageView;
    .locals 1
    .param p1, "inflate"    # Z

    .prologue
    .line 215
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    .line 218
    :goto_0
    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    .line 218
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenOpenHomeSashImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getSoldSashImageView(Z)Landroid/widget/ImageView;
    .locals 1
    .param p1, "inflate"    # Z

    .prologue
    .line 222
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    .line 225
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    .line 225
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenSoldSashImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getWithdrawnSashImageView(Z)Landroid/widget/ImageView;
    .locals 1
    .param p1, "inflate"    # Z

    .prologue
    .line 229
    if-nez p1, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    .line 232
    :cond_2
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mHiddenWidthdrawnSashImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method
