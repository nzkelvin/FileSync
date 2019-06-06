.class public final Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESPropertyAffordabilityFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEPOSIT_PERCENT_STEP:I = 0x1

.field private static final INTEREST_RATE_STEP:D = 0.1

.field private static final LOAN_TERM_STEP:I = 0x1

.field private static final MAX_DEPOSIT_PERCENT:I = 0x32

.field private static final MAX_INTEREST_RATE:D = 12.0

.field private static final MAX_LOAN_TERM:I = 0x1e

.field private static final MIN_DEPOSIT_PERCENT:I = 0x0

.field private static final MIN_INTEREST_RATE:D = 1.0

.field private static final MIN_LOAN_TERM:I = 0x1

.field private static final TICKER_UPDATE_DELAY:J = 0x64L


# instance fields
.field private mAdvertisementImageView:Landroid/widget/ImageView;

.field private mDepositPercent:I

.field private mDepositSeekBar:Landroid/widget/SeekBar;

.field private mDepositTextView:Landroid/widget/TextView;

.field protected mEditedHousePrice:Z

.field private mHousePrice:I

.field private mHousePriceTextView:Landroid/widget/EditText;

.field private mInterestRate:D

.field private mInterestRateSeekBar:Landroid/widget/SeekBar;

.field private mInterestRateTextView:Landroid/widget/TextView;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field private mLoanTerm:I

.field private mLoanTermSeekBar:Landroid/widget/SeekBar;

.field private mLoanTermTextView:Landroid/widget/TextView;

.field private mPaymentAmountTextView:Landroid/widget/TextView;

.field private mPaymentFrequencyIndex:I

.field private mPaymentFrequencyRow:Landroid/view/View;

.field private mPaymentFrequencyTextView:Landroid/widget/TextView;

.field private mPaymentFrequencyTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentFrequencyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    iput v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositPercent:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTerm:I

    .line 67
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    .line 71
    iput v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->onPaymentFrequencyRowClick()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->onAdvertisementImageClick()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 50
    iget v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    return v0
.end method

.method static synthetic access$302(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    return p1
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    return-object v0
.end method

.method private calculatePaymentAmount()D
    .locals 18

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v5, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyValues:Ljava/util/List;

    move-object/from16 v0, p0

    iget v10, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 281
    .local v2, "frequencyDenominator":D
    move-object/from16 v0, p0

    iget-wide v10, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    div-double v8, v10, v2

    .line 282
    .local v8, "r":D
    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePrice:I

    int-to-double v10, v5

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositPercent:I

    int-to-double v14, v5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v6, v10, v12

    .line 283
    .local v6, "p":D
    move-object/from16 v0, p0

    iget v5, v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTerm:I

    int-to-double v10, v5

    mul-double/2addr v10, v2

    double-to-int v4, v10

    .line 284
    .local v4, "n":I
    mul-double v10, v8, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v14, v8

    neg-int v5, v4

    int-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    return-wide v10
.end method

.method private onAdvertisementImageClick()V
    .locals 4

    .prologue
    .line 343
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    .line 344
    .local v0, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v3, "mortgage"

    invoke-virtual {v0, v3}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "section":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lnz/co/realestate/android/lib/util/RESListingUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method private onPaymentFrequencyRowClick()V
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyTitles:Ljava/util/List;

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 302
    .local v0, "titles":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnz/co/realestate/android/lib/R$string;->payment_frequency:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$5;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 310
    return-void
.end method

.method private updateAdvertisementImage()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    .line 334
    .local v1, "model":Lnz/co/realestate/android/lib/model/RESApplicationModelBase;
    const-string v5, "mortgage"

    invoke-virtual {v1, v5}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentAdhubSection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "section":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 336
    .local v0, "available":Z
    :goto_0
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v3

    .line 338
    .local v3, "width":I
    if-eqz v0, :cond_2

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getAdImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v3}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->tileBitmapEnds(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :goto_2
    return-void

    .end local v0    # "available":Z
    .end local v3    # "width":I
    :cond_0
    move v0, v4

    .line 335
    goto :goto_0

    .line 336
    .restart local v0    # "available":Z
    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    .line 339
    .restart local v3    # "width":I
    :cond_2
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$DownloadAdImageIntentService;->startService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->setHasOptionsMenu(Z)V

    .line 115
    invoke-virtual {p0, v8}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->setRetainInstance(Z)V

    .line 118
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->house_price_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePriceTextView:Landroid/widget/EditText;

    .line 121
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->deposit_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositTextView:Landroid/widget/TextView;

    .line 122
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->deposit_seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositSeekBar:Landroid/widget/SeekBar;

    .line 125
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->loan_term_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermTextView:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->loan_term_seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermSeekBar:Landroid/widget/SeekBar;

    .line 129
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->interest_rate_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->interest_rate_seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    .line 133
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->payment_frequency_row:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyRow:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->payment_frequency_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyTextView:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->payment_amount_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentAmountTextView:Landroid/widget/TextView;

    .line 140
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;

    invoke-direct {v3, p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 141
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 144
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;

    invoke-direct {v3, p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 148
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;

    invoke-direct {v3, p0, v6}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$SimpleOnSeekBarChangeListener;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 149
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 150
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentWestpacRates()Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;

    move-result-object v1

    .line 151
    .local v1, "rates":Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$RatesResult;->floating:D

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v10

    :goto_0
    iput-wide v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    .line 152
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    iget-wide v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    sub-double v4, v6, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyRow:Landroid/view/View;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$id;->ad_imageview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    .line 163
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mAdvertisementImageView:Landroid/widget/ImageView;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$2;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePriceTextView:Landroid/widget/EditText;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateAdvertisementImage()V

    .line 188
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$xml;->arrays:I

    const-string v4, "mortgage_payment_frequency"

    invoke-static {v2, v3, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseStringMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v3, "title"

    invoke-direct {v2, v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyTitles:Ljava/util/List;

    .line 190
    new-instance v2, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;

    const-string v3, "value"

    invoke-direct {v2, v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$MapItemMapFunction;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToDoubleMapFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$StringToDoubleMapFunction;-><init>()V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyValues:Ljava/util/List;

    .line 193
    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$4;

    const-wide/16 v4, 0x64

    invoke-direct {v2, p0, v4, v5, v8}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;JZ)V

    iput-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mTickerRunnable:Lnz/co/jsalibrary/android/runnable/JSATickerRunnable;

    .line 200
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 203
    iput-boolean v8, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mViewsInitialised:Z

    .line 204
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 205
    return-void

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    move-wide v2, v4

    .line 151
    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 213
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 214
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 355
    sget v0, Lnz/co/realestate/android/lib/R$menu;->property_menu_affordability:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 356
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_affordability_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 227
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z

    .line 228
    return-void
.end method

.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .prologue
    .line 370
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adImage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateAdvertisementImage()V

    .line 371
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lnz/co/realestate/android/lib/R$id;->terms:I

    if-eq v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 362
    :goto_0
    return v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$raw;->mortgage_terms:I

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getRawResource(Landroid/content/Context;I)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 361
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->mortgage_terms:I

    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextDialog;->show()V

    .line 362
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 222
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    sget-object v1, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_AFFORDABILITY:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 0
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 292
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 293
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->updateView()V

    .line 294
    return-void
.end method

.method public updateView()V
    .locals 12

    .prologue
    .line 235
    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mViewsInitialised:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePriceTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "price":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    const-string v4, ","

    invoke-static {v4, v3}, Lnz/co/jsalibrary/android/util/JSAStringUtil;->remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    :cond_2
    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    const-string v4, "$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 245
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePrice:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v3    # "price":Ljava/lang/String;
    :goto_1
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositPercent:I

    .line 251
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x403d000000000000L    # 29.0

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTerm:I

    .line 252
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    iget-object v8, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getMax()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    .line 255
    iget-boolean v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mEditedHousePrice:Z

    if-nez v4, :cond_5

    .line 256
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .line 257
    .local v2, "fixedPrice":Z
    :goto_2
    if-eqz v2, :cond_4

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->price:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Price;->price:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePrice:I

    .line 259
    :cond_4
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePriceTextView:Landroid/widget/EditText;

    iget v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePrice:I

    invoke-static {v5}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPriceWithoutCommas(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .end local v2    # "fixedPrice":Z
    :cond_5
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "% = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mHousePrice:I

    iget v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mDepositPercent:I

    mul-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPrice(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTermTextView:Landroid/widget/TextView;

    sget v5, Lnz/co/realestate/android/lib/R$string;->n_years:I

    invoke-virtual {p0, v5}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mLoanTerm:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRateTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mInterestRate:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyTitles:Ljava/util/List;

    iget v6, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentFrequencyIndex:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->calculatePaymentAmount()D

    move-result-wide v0

    .line 276
    .local v0, "amount":D
    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyAffordabilityFragment;->mPaymentAmountTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->formatPrice(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "amount":D
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 246
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method
