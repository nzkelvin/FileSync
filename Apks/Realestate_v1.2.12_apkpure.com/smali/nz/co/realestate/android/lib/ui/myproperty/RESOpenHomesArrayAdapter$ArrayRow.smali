.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;
.super Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;
.source "RESOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row",
        "<",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;",
        "Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->mListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    .line 58
    return-void
.end method

.method static synthetic access$300(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;)Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    .prologue
    .line 52
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->mListener:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    return-object v0
.end method

.method private updateRowDateHeader(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V
    .locals 3
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;
    .param p2, "item"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    .prologue
    .line 72
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->access$200(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getOpenHomes()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeDateText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->access$400(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;

    invoke-direct {v1, p0, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->access$400(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 77
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->access$400(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;

    invoke-direct {v1, p0, p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;-><init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 80
    return-void
.end method

.method private updateRowOpenHome(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)V
    .locals 2
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;
    .param p2, "item"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$Row;->updateRow(Lnz/co/realestate/android/lib/ui/searchmap/RESPropertyArrayAdapter$RowWrapper;Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;->access$100(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->access$000(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-static {v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeTimesText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;

    check-cast p3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->updateRow(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;)V

    return-void
.end method

.method public updateRow(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Landroid/database/Cursor;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;)V
    .locals 1
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "item"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;

    .prologue
    .line 61
    instance-of v0, p3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    if-eqz v0, :cond_0

    check-cast p3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    .end local p3    # "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    invoke-direct {p0, p1, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->updateRowOpenHome(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)V

    .line 64
    :goto_0
    return-void

    .line 62
    .restart local p3    # "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    :cond_0
    instance-of v0, p3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    if-eqz v0, :cond_1

    check-cast p3, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    .end local p3    # "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    invoke-direct {p0, p1, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->updateRowDateHeader(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V

    goto :goto_0

    .line 63
    .restart local p3    # "item":Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterItem;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
