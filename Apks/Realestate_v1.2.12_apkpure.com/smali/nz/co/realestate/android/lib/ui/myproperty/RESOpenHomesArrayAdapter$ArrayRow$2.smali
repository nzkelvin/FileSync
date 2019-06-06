.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;
.super Ljava/lang/Object;
.source "RESOpenHomesArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 77
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->access$300(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;)Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;->access$300(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow;)Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$ArrayRow$2;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$DateHeaderAdapterItem;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$AdapterListener;->onMapLongClick(Ljava/util/Date;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
