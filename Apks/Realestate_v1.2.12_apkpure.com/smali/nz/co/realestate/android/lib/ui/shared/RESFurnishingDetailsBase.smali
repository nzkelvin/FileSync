.class public abstract Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;
.super Landroid/widget/LinearLayout;
.source "RESFurnishingDetailsBase.java"


# instance fields
.field protected mInflated:Z

.field protected mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract getLayoutResource()I
.end method

.method protected inflate()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lnz/co/realestate/android/lib/R$layout;->furnishing_details:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->mInflated:Z

    .line 50
    return-void
.end method

.method public setDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V
    .locals 1
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .line 31
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .line 32
    iget-boolean v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->mInflated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->inflate()V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->updateView()V

    .line 34
    return-void
.end method

.method protected abstract updateView()V
.end method
