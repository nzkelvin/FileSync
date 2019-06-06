.class public Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "JSAAlertDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelable:Z

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mIconResId:I

.field private mInverseBackgroundForced:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessage:Ljava/lang/String;

.field private mMultiChoiceItems:[Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/String;

.field private mNeutralButtonText:Ljava/lang/String;

.field private mPositiveButtonText:Ljava/lang/String;

.field private mSingleChoiceItems:[Ljava/lang/CharSequence;

.field private mTheme:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$4;

    invoke-direct {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$4;-><init>()V

    sput-object v0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    .line 141
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNeutralButtonText:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->readCharSequenceArray(Landroid/os/Parcel;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 377
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->readCharSequenceArray(Landroid/os/Parcel;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMultiChoiceItems:[Ljava/lang/CharSequence;

    .line 378
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->readCharSequenceArray(Landroid/os/Parcel;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mSingleChoiceItems:[Ljava/lang/CharSequence;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItem:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTheme:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mIconResId:I

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mInverseBackgroundForced:Z

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItems:[Z

    .line 385
    return-void

    :cond_0
    move v0, v2

    .line 382
    goto :goto_0

    :cond_1
    move v1, v2

    .line 383
    goto :goto_1
.end method

.method static synthetic access$000(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMultiChoiceItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$1200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mSingleChoiceItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItem:I

    return v0
.end method

.method static synthetic access$1400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    return v0
.end method

.method static synthetic access$1500(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mInverseBackgroundForced:Z

    return v0
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTheme:I

    return v0
.end method

.method static synthetic access$300(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mIconResId:I

    return v0
.end method

.method static synthetic access$600(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNeutralButtonText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 119
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mItems:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCancelable(Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    .line 229
    return-object p0
.end method

.method public setIcon(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 177
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mIconResId:I

    .line 178
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "inverseBackgroundForced"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mInverseBackgroundForced:Z

    .line 247
    return-object p0
.end method

.method public setItems(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "itemsId"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setItems([Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 356
    :cond_0
    const-class v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setItems([Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setItems([I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 3
    .param p1, "itemIds"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 338
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->fromPrimitive([I)[Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$3;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$3;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setItems(Ljava/util/List;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setItems([Ljava/lang/CharSequence;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 362
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 363
    return-object p0
.end method

.method public setItems([Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 349
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public setMessage(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setMultiChoiceItems(I[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems(Ljava/util/List;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;[Z)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    const-class v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMultiChoiceItems([I[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 3
    .param p1, "itemIds"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->fromPrimitive([I)[Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setMultiChoiceItems(Ljava/util/List;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMultiChoiceItems:[Ljava/lang/CharSequence;

    .line 286
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItems:[Z

    .line 287
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/String;[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 271
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 272
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMultiChoiceItems:[Ljava/lang/CharSequence;

    .line 273
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItems:[Z

    .line 274
    return-object p0
.end method

.method public setNegativeButton(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setNeutralButton(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNeutralButtonText:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNeutralButtonText:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setPositiveButton(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public setSingleChoiceItems(II)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems(Ljava/util/List;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;I)",
            "Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const-class v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSingleChoiceItems([II)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 3
    .param p1, "itemIds"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I

    .prologue
    .line 299
    invoke-static {p1}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->fromPrimitive([I)[Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$2;

    invoke-direct {v2, p0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$2;-><init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p2}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setSingleChoiceItems(Ljava/util/List;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I

    .prologue
    .line 323
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 324
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mSingleChoiceItems:[Ljava/lang/CharSequence;

    .line 325
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItem:I

    .line 326
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I

    .prologue
    .line 309
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 310
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mSingleChoiceItems:[Ljava/lang/CharSequence;

    .line 311
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItem:I

    .line 312
    return-object p0
.end method

.method public setTheme(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 237
    iput p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTheme:I

    .line 238
    return-object p0
.end method

.method public setTitle(I)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, p2}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->writeCharSequenceArray(Landroid/os/Parcel;[Ljava/lang/CharSequence;I)V

    .line 394
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mMultiChoiceItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, p2}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->writeCharSequenceArray(Landroid/os/Parcel;[Ljava/lang/CharSequence;I)V

    .line 395
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mSingleChoiceItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, p2}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->writeCharSequenceArray(Landroid/os/Parcel;[Ljava/lang/CharSequence;I)V

    .line 396
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mTheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCancelable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mInverseBackgroundForced:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->mCheckedItems:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 402
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0

    :cond_1
    move v1, v2

    .line 400
    goto :goto_1
.end method
