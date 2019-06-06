.class public Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
.super Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;
.source "RESRefineOptionsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DefaultDialogConfigurator;",
        ">;"
    }
.end annotation


# static fields
.field private static final FROM_INDEX:Ljava/lang/String; = "from_index"

.field private static final FROM_PRICES:Ljava/lang/String; = "from_prices"

.field private static final TO_INDEX:Ljava/lang/String; = "to_index"

.field private static final TO_PRICES:Ljava/lang/String; = "to_prices"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogFragment;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/util/List;Ljava/util/List;II)Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResourceId"    # I
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)",
            "Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;-><init>()V

    .line 678
    .local v0, "fragment":Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;
    const-string v1, "from_prices"

    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0, v1, p2}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 679
    const-string v1, "to_prices"

    check-cast p3, Ljava/io/Serializable;

    .end local p3    # "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0, v1, p3}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->putArgumentSerializable(Ljava/lang/String;Ljava/io/Serializable;)Landroid/os/Bundle;

    .line 680
    const-string v1, "from_index"

    invoke-virtual {v0, v1, p4}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 681
    const-string v1, "to_index"

    invoke-virtual {v0, v1, p5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->putArgumentInt(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 682
    invoke-virtual {v0, p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->putArgumentTitle(Landroid/content/Context;I)Landroid/os/Bundle;

    .line 683
    return-object v0
.end method


# virtual methods
.method public onCreateDialogInternal(Landroid/os/Bundle;)Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 687
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 688
    .local v6, "arguments":Landroid/os/Bundle;
    const-string v0, "from_prices"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 689
    .local v2, "fromPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "to_prices"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 690
    .local v3, "toPrices":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "from_index"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 691
    .local v4, "fromIndex":I
    const-string v0, "to_index"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 692
    .local v5, "toIndex":I
    new-instance v0, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lnz/co/realestate/android/lib/ui/search/RESRefineOptionsBase$RangeDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;II)V

    return-object v0
.end method
