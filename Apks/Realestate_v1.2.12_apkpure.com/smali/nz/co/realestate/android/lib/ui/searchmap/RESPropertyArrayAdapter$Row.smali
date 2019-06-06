.class public abstract Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;
.super Ljava/lang/Object;
.source "RESPropertyArrayAdapter.java"

# interfaces
.implements Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;",
        ">",
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/widget/adapter/JSAFlexibleRow",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field protected mBoldFirstAddressLine:Z

.field protected mContext:Landroid/content/Context;

.field protected mImageListener:Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;, "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;-><init>()V

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->mImageListener:Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;

    .line 97
    return-void
.end method


# virtual methods
.method protected getAddressText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .prologue
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;, "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row<TS;TT;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 151
    if-eqz p1, :cond_0

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v1

    .line 152
    :cond_1
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    const-string v4, "\n"

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "lines":Ljava/lang/String;
    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->mBoldFirstAddressLine:Z

    if-eqz v3, :cond_0

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->mContext:Landroid/content/Context;

    sget v4, Lnz/co/realestate/android/lib/R$style;->Application_Text_Small_Black_Bold:I

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 157
    .local v2, "span":Landroid/text/style/TextAppearanceSpan;
    iget-object v3, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v3, v3, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v0

    .line 158
    goto :goto_0
.end method

.method public updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Ljava/lang/Object;)V
    .locals 21
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;",
            "TS;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;, "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row<TS;TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TS;"
    move-object/from16 v0, p2

    instance-of v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    if-eqz v2, :cond_0

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    .end local p2    # "item":Ljava/lang/Object;, "TS;"
    move-object/from16 v16, p2

    .line 101
    .local v16, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    :goto_0
    move-object/from16 v0, v16

    instance-of v2, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    if-eqz v2, :cond_2

    move-object/from16 v2, v16

    check-cast v2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    move-object v13, v2

    .line 102
    .local v13, "heading":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;
    :goto_1
    move-object/from16 v0, v16

    instance-of v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v2, :cond_3

    move-object/from16 v2, v16

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    move-object v12, v2

    .line 103
    .local v12, "full":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :goto_2
    if-nez v16, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 100
    .end local v12    # "full":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .end local v13    # "heading":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;
    .end local v16    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    .restart local p2    # "item":Ljava/lang/Object;, "TS;"
    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowListing;

    if-eqz v2, :cond_1

    check-cast p2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowListing;

    .end local p2    # "item":Ljava/lang/Object;, "TS;"
    invoke-interface/range {p2 .. p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowListing;->getListing()Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;

    move-result-object v16

    goto :goto_0

    .restart local p2    # "item":Ljava/lang/Object;, "TS;"
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 101
    .end local p2    # "item":Ljava/lang/Object;, "TS;"
    .restart local v16    # "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 102
    .restart local v13    # "heading":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 106
    .restart local v12    # "full":Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    :cond_4
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->updateRowHeading(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;)V

    .line 143
    :goto_3
    return-void

    .line 109
    :cond_5
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    sget v4, Lnz/co/realestate/android/lib/R$drawable;->img_default:I

    invoke-virtual {v2, v3, v4}, Lnz/co/realestate/android/lib/core/RESImageLoader;->setDefaultImage(Landroid/widget/ImageView;I)V

    .line 110
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mImageView:Landroid/widget/ImageView;

    .line 111
    invoke-static/range {v16 .. v16}, Lnz/co/realestate/android/lib/util/RESImageUtil$PropertyImageRetriever;->getPropertyImageUrl(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_WIDTH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lnz/co/realestate/android/lib/core/RESConstantsBase;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, v16

    iget v9, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->id:I

    .line 112
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->mImageListener:Lnz/co/realestate/android/lib/core/RESImageLoader$PersistImageListener;

    .line 110
    invoke-virtual/range {v2 .. v10}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadPropertyImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Lnz/co/jsalibrary/android/app/JSAImageLoader$ImageLoadListener;)V

    .line 115
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->open_home:Z

    if-nez v2, :cond_6

    if-eqz v12, :cond_e

    iget-object v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, v12, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->open_homes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    const/4 v14, 0x1

    .line 116
    .local v14, "isOpenHome":Z
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->getOpenHomeSashImageView(Z)Landroid/widget/ImageView;

    move-result-object v17

    .line 117
    .local v17, "openHomeImageView":Landroid/widget/ImageView;
    if-eqz v17, :cond_7

    if-eqz v14, :cond_f

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isSold()Z

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->getSoldSashImageView(Z)Landroid/widget/ImageView;

    move-result-object v19

    .line 121
    .local v19, "soldImageView":Landroid/widget/ImageView;
    if-eqz v19, :cond_8

    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isSold()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isWithdrawn()Z

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->getWithdrawnSashImageView(Z)Landroid/widget/ImageView;

    move-result-object v20

    .line 125
    .local v20, "withdrawnImageView":Landroid/widget/ImageView;
    if-eqz v20, :cond_9

    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isWithdrawn()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v2, :cond_12

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v2, :cond_12

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v11, 0x1

    .line 129
    .local v11, "addressValid":Z
    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mAddressTextView:Landroid/widget/TextView;

    if-eqz v11, :cond_13

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    if-eqz v11, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mAddressTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->getAddressText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isSold()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->isWithdrawn()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_b
    const/4 v15, 0x1

    .line 134
    .local v15, "isSoldOrWithdrawn":Z
    :goto_a
    if-nez v15, :cond_15

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    if-eqz v2, :cond_15

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    if-nez v2, :cond_c

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    :cond_c
    const/16 v18, 0x1

    .line 135
    .local v18, "priceValid":Z
    :goto_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mPriceTextView:Landroid/widget/TextView;

    if-eqz v18, :cond_16

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    if-eqz v18, :cond_d

    move-object/from16 v0, p1

    iget-object v3, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mPriceTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPrice(I)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->mFurnishingDetails:Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lnz/co/realestate/android/lib/ui/shared/RESFurnishingDetailsBase;->setDetails(Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;)V

    goto/16 :goto_3

    .line 115
    .end local v11    # "addressValid":Z
    .end local v14    # "isOpenHome":Z
    .end local v15    # "isSoldOrWithdrawn":Z
    .end local v17    # "openHomeImageView":Landroid/widget/ImageView;
    .end local v18    # "priceValid":Z
    .end local v19    # "soldImageView":Landroid/widget/ImageView;
    .end local v20    # "withdrawnImageView":Landroid/widget/ImageView;
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 117
    .restart local v14    # "isOpenHome":Z
    .restart local v17    # "openHomeImageView":Landroid/widget/ImageView;
    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_5

    .line 121
    .restart local v19    # "soldImageView":Landroid/widget/ImageView;
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 125
    .restart local v20    # "withdrawnImageView":Landroid/widget/ImageView;
    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 128
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 129
    .restart local v11    # "addressValid":Z
    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_9

    .line 133
    :cond_14
    const/4 v15, 0x0

    goto :goto_a

    .line 134
    .restart local v15    # "isSoldOrWithdrawn":Z
    :cond_15
    const/16 v18, 0x0

    goto :goto_b

    .line 135
    .restart local v18    # "priceValid":Z
    :cond_16
    const/16 v2, 0x8

    goto :goto_c

    .line 136
    :cond_17
    move-object/from16 v0, v16

    iget-object v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$BasicListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->description:Ljava/lang/String;

    goto :goto_d
.end method

.method public updateRowHeading(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;)V
    .locals 3
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;
    .param p2, "heading"    # Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;

    .prologue
    .line 146
    .local p0, "this":Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;, "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row<TS;TT;>;"
    invoke-virtual {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;->getRow()Landroid/view/View;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->label_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, "label":Landroid/widget/TextView;
    iget-object v1, p2, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$BasicListingHeading;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method
