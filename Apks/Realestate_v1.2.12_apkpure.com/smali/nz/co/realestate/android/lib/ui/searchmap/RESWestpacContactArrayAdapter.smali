.class public final Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "RESWestpacContactArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;",
        "Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;>;"
    const-class v0, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    sget v1, Lnz/co/realestate/android/lib/R$layout;->westpac_branch_list_row:I

    invoke-direct {p0, v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;->onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)V

    return-void
.end method

.method protected onRowRecycled(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;->onRowRecycled(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;)V

    .line 55
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/core/RESImageLoader;->unloadTarget(Landroid/widget/ImageView;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;)V

    return-void
.end method

.method protected updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;)V
    .locals 4
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;
    .param p2, "item"    # Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 34
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$000(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v0, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$100(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->phone:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->phone:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$200(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 46
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getImageLoader()Lnz/co/realestate/android/lib/core/RESImageLoader;

    move-result-object v0

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;->access$300(Lnz/co/realestate/android/lib/ui/searchmap/RESWestpacContactArrayAdapter$RowWrapper;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p2, Lnz/co/realestate/android/lib/eo/server/rest/RESWestpacResource$Contact;->image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnz/co/realestate/android/lib/core/RESImageLoader;->loadWestpacContactImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 47
    return-void

    :cond_2
    move v0, v2

    .line 37
    goto :goto_0

    :cond_3
    move v1, v2

    .line 41
    goto :goto_1
.end method
