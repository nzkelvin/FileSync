.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;
.super Ljava/lang/Object;
.source "RESOpenHomesListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onListItemLongClick(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

.field final synthetic val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$4;->val$item:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesArrayAdapter$OpenHomeAdapterItem;->getOpenHomeTuple()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;->onRemoveOpenHome(Lnz/co/jsalibrary/android/tuple/JSATuple;)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    return-void
.end method
