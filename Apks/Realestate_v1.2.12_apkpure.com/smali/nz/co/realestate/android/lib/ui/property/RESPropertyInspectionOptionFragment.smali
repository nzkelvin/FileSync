.class public final Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
.super Landroid/support/v4/app/Fragment;
.source "RESPropertyInspectionOptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;
    }
.end annotation


# static fields
.field private static final MAX_NOTES:I = 0xa

.field private static final MAX_NOTE_LINES:I = 0xa

.field private static final MAX_PHOTOS:I = 0xa

.field private static final TOTAL_IMAGE_WIDTH:I = 0x24e


# instance fields
.field private mAddNoteButton:Landroid/widget/Button;

.field private mAddPhotoButton:Landroid/widget/Button;

.field private mAnalyticsSection:Ljava/lang/String;

.field private mAverageRatingImageView:Landroid/widget/ImageView;

.field private mCategoryId:I

.field private mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

.field private mGoodRatingImageView:Landroid/widget/ImageView;

.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

.field private mNoRatingImageView:Landroid/widget/ImageView;

.field private mNotesListView:Landroid/widget/ListView;

.field private mPhotosGridView:Landroid/widget/GridView;

.field private mPoorRatingImageView:Landroid/widget/ImageView;

.field private mViewsInitialised:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onAddNoteClick()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onNoteLongClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onDeleteNoteClick(I)V

    return-void
.end method

.method static synthetic access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onAddPhotoClick()V

    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onPhotoClick(I)V

    return-void
.end method

.method static synthetic access$400(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onPhotoLongClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    return-object v0
.end method

.method static synthetic access$600(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    iget v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    return v0
.end method

.method static synthetic access$700(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAnalyticsSection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    return-void
.end method

.method static synthetic access$900(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V
    .locals 0
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->onEditNoteClick(I)V

    return-void
.end method

.method private initialiseRatingImageView(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rating"    # I

    .prologue
    .line 146
    new-instance v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;

    invoke-direct {v0, p0, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$7;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private onAddNoteClick()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 264
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v2

    sget-object v3, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION_NOTE:Ljava/lang/String;

    invoke-interface {v2, v3}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 266
    const v1, 0x1c000

    .line 267
    .local v1, "inputType":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$string;->add_note:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    .line 268
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setSingleLine(Z)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setMaxLines(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 269
    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;

    invoke-direct {v2, p0, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$10;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 283
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->show()V

    goto :goto_0
.end method

.method private onAddPhotoClick()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    invoke-interface {v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;->takePhoto()V

    goto :goto_0
.end method

.method private onDeleteNoteClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v0, p1, v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->deleteComment(II)V

    .line 331
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-static {v0, v1, v2, p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startServiceDeleteComment(Landroid/content/Context;III)V

    .line 332
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    .line 334
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method

.method private onEditNoteClick(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const v1, 0x1c000

    .line 309
    .local v1, "inputType":I
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lnz/co/realestate/android/lib/R$string;->edit_note:I

    invoke-virtual {p0, v3}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->create(Landroid/content/Context;Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v0

    .line 310
    .local v0, "dialog":Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    iget-object v2, v2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setText(Ljava/lang/String;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setSingleLine(Z)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setMaxLines(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->setInputType(I)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 311
    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;

    invoke-direct {v2, p0, p1, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$13;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;ILnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V

    invoke-virtual {v0, v2}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->addButtonClickHandler(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    .line 324
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->show()V

    goto :goto_0
.end method

.method private onNoteLongClick(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 303
    :goto_0
    return v0

    .line 292
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lnz/co/realestate/android/lib/R$string;->edit_note:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    sget v1, Lnz/co/realestate/android/lib/R$string;->delete_note:I

    invoke-virtual {p0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v1, -0x1

    new-instance v4, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;

    invoke-direct {v4, p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$12;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$11;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$11;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    .line 298
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onPhotoClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget-object v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$14;

    invoke-direct {v2, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$14;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 364
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    invoke-interface {v1, v0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;->showPhotoGallery(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private onPhotoLongClick(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 389
    :goto_0
    return v0

    .line 373
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v0, [Ljava/lang/String;

    sget v4, Lnz/co/realestate/android/lib/R$string;->delete_photo:I

    invoke-virtual {p0, v4}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, -0x1

    new-instance v4, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$16;

    invoke-direct {v4, p0, p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$16;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;I)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$15;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$15;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private updateDetails()V
    .locals 5

    .prologue
    .line 248
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mViewsInitialised:Z

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$8;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$8;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionNotesArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v2, v3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$9;

    invoke-direct {v3, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$9;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v1

    .line 256
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    new-instance v3, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionPhotosArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->setRetainInstance(Z)V

    .line 81
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->good_rating_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mGoodRatingImageView:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->average_rating_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAverageRatingImageView:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->poor_rating_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPoorRatingImageView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->no_rating_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNoRatingImageView:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->add_note_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAddNoteButton:Landroid/widget/Button;

    .line 87
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->add_photo_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAddPhotoButton:Landroid/widget/Button;

    .line 89
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->notes_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    .line 90
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lnz/co/realestate/android/lib/R$id;->photos_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    .line 93
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mGoodRatingImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->initialiseRatingImageView(Landroid/view/View;I)V

    .line 94
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAverageRatingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->initialiseRatingImageView(Landroid/view/View;I)V

    .line 95
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPoorRatingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->initialiseRatingImageView(Landroid/view/View;I)V

    .line 96
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNoRatingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->initialiseRatingImageView(Landroid/view/View;I)V

    .line 99
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAddNoteButton:Landroid/widget/Button;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$2;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$2;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$3;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$3;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAddPhotoButton:Landroid/widget/Button;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$4;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$4;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$5;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$5;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    new-instance v1, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$6;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$6;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 136
    iput-boolean v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mViewsInitialised:Z

    .line 137
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    .line 138
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    .line 139
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 162
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget v0, Lnz/co/realestate/android/lib/R$layout;->property_inspection_option_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v0, p1, v1}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->addPhoto(Ljava/lang/String;I)V

    .line 350
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v1, v1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v2, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-static {v0, v1, v2, p1}, Lnz/co/realestate/android/lib/eo/server/util/RESServerRequestUtil$UpdateMyPropertyDetailsIntentService;->startServiceAddPhoto(Landroid/content/Context;IILjava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    .line 353
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 171
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAnalyticsSection:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getAnalyticsTracker()Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lnz/co/realestate/android/lib/core/RESConstantsBase;->PAGE_LISTING_INSPECTION:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAnalyticsSection:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil;->buildPageViewUrl([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/util/RESAnalyticsUtil$AnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnalytics(Ljava/lang/String;)V
    .locals 0
    .param p1, "analytics"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAnalyticsSection:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 230
    iput p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    .line 231
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    .line 232
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    .line 233
    return-void
.end method

.method public setFragmentListener(Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    .prologue
    .line 397
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mFragmentListener:Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment$FragmentListener;

    .line 398
    return-void
.end method

.method public setListing(Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;)V
    .locals 2
    .param p1, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .prologue
    .line 211
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v0, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v1, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    if-ne v0, v1, :cond_1

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_1
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 221
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateDetails()V

    .line 222
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->updateView()V

    goto :goto_0
.end method

.method public updateView()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-boolean v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mViewsInitialised:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v3, v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getRating(I)Ljava/lang/Integer;

    move-result-object v1

    .line 184
    .local v1, "rawRating":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 185
    .local v0, "rating":I
    :goto_1
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mGoodRatingImageView:Landroid/widget/ImageView;

    if-ne v0, v5, :cond_5

    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 186
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAverageRatingImageView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 187
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPoorRatingImageView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_7

    move v3, v5

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 188
    iget-object v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNoRatingImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    move v3, v5

    :goto_5
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 191
    const/16 v3, 0x24e

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getDefaultDisplayWidth(Landroid/content/Context;)I

    move-result v7

    if-le v3, v7, :cond_9

    move v2, v5

    .line 192
    .local v2, "squeeze":Z
    :goto_6
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mGoodRatingImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_7
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mAverageRatingImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_8
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPoorRatingImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_9
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 195
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNoRatingImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_a
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 199
    :cond_2
    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mNotesListView:Landroid/widget/ListView;

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v3, v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v4

    :goto_b
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 203
    :cond_3
    iget-object v3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mPhotosGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    iget v7, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyInspectionOptionFragment;->mCategoryId:I

    invoke-virtual {v5, v7}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_f

    :goto_c
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "rating":I
    .end local v2    # "squeeze":Z
    :cond_4
    move v0, v4

    .line 184
    goto/16 :goto_1

    .restart local v0    # "rating":I
    :cond_5
    move v3, v4

    .line 185
    goto/16 :goto_2

    :cond_6
    move v3, v4

    .line 186
    goto/16 :goto_3

    :cond_7
    move v3, v4

    .line 187
    goto/16 :goto_4

    :cond_8
    move v3, v4

    .line 188
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 191
    goto/16 :goto_6

    .line 192
    .restart local v2    # "squeeze":Z
    :cond_a
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_7

    .line 193
    :cond_b
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_8

    .line 194
    :cond_c
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_9

    .line 195
    :cond_d
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_a

    :cond_e
    move v3, v6

    .line 199
    goto :goto_b

    :cond_f
    move v4, v6

    .line 203
    goto :goto_c
.end method
