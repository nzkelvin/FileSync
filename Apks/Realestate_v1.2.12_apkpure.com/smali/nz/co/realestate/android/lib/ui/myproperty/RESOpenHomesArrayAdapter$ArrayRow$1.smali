.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;
.super Ljava/lang/Object;
.source "RESOpenHomesArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->updateRowDateHeader(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

.field final synthetic val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    .prologue
    .line 73
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->access$300(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;)Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->access$300(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;)Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getOpenHomes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$1;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    invoke-virtual {v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;->onMapClick(Ljava/util/List;Ljava/util/Date;)V

    :cond_0
    return-void
.end method
