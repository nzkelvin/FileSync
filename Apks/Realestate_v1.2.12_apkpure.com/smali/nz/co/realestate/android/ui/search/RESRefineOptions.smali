.class public final Lnz/co/realestate/android/ui/search/RESRefineOptions;
.super Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.source "RESRefineOptions.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getPriceResourceNameFrom(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 27
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "prices_from_for_sale"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "prices_from_rental"

    goto :goto_0
.end method

.method protected getPriceResourceNameTo(I)Ljava/lang/String;
    .locals 1
    .param p1, "listingTypeId"    # I

    .prologue
    .line 31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "prices_to_for_sale"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "prices_to_rental"

    goto :goto_0
.end method
