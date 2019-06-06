.class public abstract Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;
.super Ljava/lang/Object;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RowType"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mTextView:Landroid/widget/TextView;

.field protected final mTitle:Ljava/lang/String;

.field protected final mTitleTextView:Landroid/widget/TextView;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mContext:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTitle:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mView:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mView:Landroid/view/View;

    sget v1, Lnz/co/realestate/android/lib/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTextView:Landroid/widget/TextView;

    .line 193
    sget v0, Lnz/co/realestate/android/lib/R$id;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTitleTextView:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mView:Landroid/view/View;

    new-instance v1, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$1;

    invoke-direct {v1, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$1;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method


# virtual methods
.method protected getRowTypeItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onRowClick()V
    .locals 5

    .prologue
    .line 204
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->getRowTypeItems()Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 206
    .local v2, "items":[Ljava/lang/String;
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, "itemIndex":I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;

    invoke-direct {v4, p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType$2;-><init>(Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;)V

    invoke-virtual {v3, v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 215
    return-void
.end method

.method protected onRowValueSelected(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 224
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RowType;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method protected update()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
