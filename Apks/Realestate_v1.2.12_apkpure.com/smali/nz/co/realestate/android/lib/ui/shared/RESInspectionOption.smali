.class public final Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;
.super Landroid/widget/LinearLayout;
.source "RESInspectionOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Details;,
        Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption$Config;
    }
.end annotation


# static fields
.field private static final LAYOUT_PADDING_VERTICAL:I = 0x10

.field public static final RATING_AVERAGE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RATING_GOOD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RATING_NO_RATING:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RATING_POOR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAnalyticsSection:Ljava/lang/String;

.field private mCategoryId:I

.field private mCategoryTitle:Ljava/lang/String;

.field private mInflated:Z

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

.field private mNoteCountTextView:Landroid/widget/TextView;

.field private mPhotoCountTextView:Landroid/widget/TextView;

.field private mRatingImageView:Landroid/widget/ImageView;

.field private mSectionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->initialiseLayout()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->initialiseAttributes(Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->initialiseLayout()V

    .line 60
    return-void
.end method

.method private getRatingImageResource(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)I
    .locals 5
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 177
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    if-eqz p1, :cond_0

    iget v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    invoke-virtual {p1, v2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getRating(I)Ljava/lang/Integer;

    move-result-object v1

    .line 179
    .local v1, "rawRating":Ljava/lang/Integer;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    .local v0, "rating":I
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 190
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_inspection_rating:I

    :goto_2
    return v2

    .line 178
    .end local v0    # "rating":I
    .end local v1    # "rawRating":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 179
    .restart local v1    # "rawRating":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 182
    .restart local v0    # "rating":I
    :pswitch_0
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_inspection_rating:I

    goto :goto_2

    .line 184
    :pswitch_1
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_inspection_poor:I

    goto :goto_2

    .line 186
    :pswitch_2
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_inspection_average:I

    goto :goto_2

    .line 188
    :pswitch_3
    sget v2, Lnz/co/realestate/android/lib/R$drawable;->ic_inspection_good:I

    goto :goto_2

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initialiseAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lnz/co/realestate/android/lib/R$styleable;->RESInspectionOption:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lnz/co/realestate/android/lib/R$styleable;->RESInspectionOption_section:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryTitle:Ljava/lang/String;

    .line 74
    sget v1, Lnz/co/realestate/android/lib/R$styleable;->RESInspectionOption_sectionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    .line 75
    sget v1, Lnz/co/realestate/android/lib/R$styleable;->RESInspectionOption_analytics:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mAnalyticsSection:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private initialiseLayout()V
    .locals 1

    .prologue
    .line 84
    sget v0, Lnz/co/realestate/android/lib/R$drawable;->bg_row:I

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setBackgroundResource(I)V

    .line 85
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setGravity(I)V

    .line 86
    return-void
.end method

.method private updateView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mInflated:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->inflate()V

    .line 151
    :cond_0
    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mInflated:Z

    if-nez v2, :cond_1

    .line 170
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mRatingImageView:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    sget v2, Lnz/co/realestate/android/lib/R$id;->rating_imageview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mRatingImageView:Landroid/widget/ImageView;

    .line 155
    :cond_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mSectionTextView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    sget v2, Lnz/co/realestate/android/lib/R$id;->inspection_section_textview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mSectionTextView:Landroid/widget/TextView;

    .line 156
    :cond_3
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mNoteCountTextView:Landroid/widget/TextView;

    if-nez v2, :cond_4

    sget v2, Lnz/co/realestate/android/lib/R$id;->notes_count_textview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mNoteCountTextView:Landroid/widget/TextView;

    .line 157
    :cond_4
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mPhotoCountTextView:Landroid/widget/TextView;

    if-nez v2, :cond_5

    sget v2, Lnz/co/realestate/android/lib/R$id;->photos_count_textview:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mPhotoCountTextView:Landroid/widget/TextView;

    .line 160
    :cond_5
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mRatingImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    invoke-direct {p0, v4}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getRatingImageResource(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mSectionTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v4, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    invoke-virtual {v2, v4}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    .local v0, "noteCount":I
    :goto_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mNoteCountTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 169
    .local v1, "photoCount":I
    :goto_2
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mPhotoCountTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "noteCount":I
    .end local v1    # "photoCount":I
    :cond_6
    move v0, v3

    .line 165
    goto :goto_1

    .restart local v0    # "noteCount":I
    :cond_7
    move v1, v3

    .line 168
    goto :goto_2
.end method


# virtual methods
.method public getAnalyticsSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mAnalyticsSection:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    return v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected inflate()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 199
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 201
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lnz/co/realestate/android/lib/R$layout;->inspection_option_internals:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 202
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getListPreferredItemHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    invoke-virtual {p0, v7, v6, v7, v6}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->setPadding(IIII)V

    .line 204
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->requestLayout()V

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mInflated:Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 94
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->updateView()V

    .line 95
    return-void
.end method

.method public setAnalyticsSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mAnalyticsSection:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->updateView()V

    .line 130
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "sectionId"    # I

    .prologue
    .line 115
    iput p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryId:I

    .line 116
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->updateView()V

    .line 117
    return-void
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mCategoryTitle:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->updateView()V

    .line 104
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 141
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 142
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/shared/RESInspectionOption;->updateView()V

    .line 143
    return-void
.end method
