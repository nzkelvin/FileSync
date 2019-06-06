.class public final Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;
.super Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;
.source "RESFurnishingDetails.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private tintView(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 83
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 84
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "original":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    .local v1, "wrapped":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f04002d

    return v0
.end method

.method protected updateView()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 36
    iget-object v9, p0, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    if-nez v9, :cond_0

    .line 68
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v9, p0, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget v3, v9, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->bedrooms:I

    .line 38
    .local v3, "bedrooms":I
    iget-object v9, p0, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget v0, v9, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->bathrooms:I

    .line 39
    .local v0, "bathrooms":I
    iget-object v9, p0, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    iget v6, v9, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->car_spaces:I

    .line 42
    .local v6, "carparks":I
    invoke-virtual {p0, v10}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->setOrientation(I)V

    .line 43
    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->setGravity(I)V

    .line 46
    const v9, 0x7f0f00a9

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 47
    .local v4, "bedroomsImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v4}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->tintView(Landroid/widget/ImageView;)V

    .line 48
    const v9, 0x7f0f00aa

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    .local v5, "bedroomsTextView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    move v9, v10

    :goto_1
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    if-eqz v3, :cond_2

    move v9, v10

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v9, 0x7f0f00ab

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 55
    .local v1, "bathroomsImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->tintView(Landroid/widget/ImageView;)V

    .line 56
    const v9, 0x7f0f00ac

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "bathroomsTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    move v9, v10

    :goto_3
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    if-eqz v0, :cond_4

    move v9, v10

    :goto_4
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v9, 0x7f0f00ad

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 63
    .local v7, "carparksImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v7}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->tintView(Landroid/widget/ImageView;)V

    .line 64
    const v9, 0x7f0f00ae

    invoke-virtual {p0, v9}, Lnz/co/realestate/android/ui/shared/RESFurnishingDetails;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 65
    .local v8, "carparksTextView":Landroid/widget/TextView;
    if-eqz v6, :cond_5

    move v9, v10

    :goto_5
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    if-eqz v6, :cond_6

    :goto_6
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v1    # "bathroomsImageView":Landroid/widget/ImageView;
    .end local v2    # "bathroomsTextView":Landroid/widget/TextView;
    .end local v7    # "carparksImageView":Landroid/widget/ImageView;
    .end local v8    # "carparksTextView":Landroid/widget/TextView;
    :cond_1
    move v9, v11

    .line 49
    goto :goto_1

    :cond_2
    move v9, v11

    .line 50
    goto :goto_2

    .restart local v1    # "bathroomsImageView":Landroid/widget/ImageView;
    .restart local v2    # "bathroomsTextView":Landroid/widget/TextView;
    :cond_3
    move v9, v11

    .line 57
    goto :goto_3

    :cond_4
    move v9, v11

    .line 58
    goto :goto_4

    .restart local v7    # "carparksImageView":Landroid/widget/ImageView;
    .restart local v8    # "carparksTextView":Landroid/widget/TextView;
    :cond_5
    move v9, v11

    .line 65
    goto :goto_5

    :cond_6
    move v10, v11

    .line 66
    goto :goto_6
.end method
