.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$2;
.super Ljava/lang/Object;
.source "RESOpenHomesListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    invoke-static {v0, p3}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->access$100(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;I)Z

    move-result v0

    return v0
.end method
