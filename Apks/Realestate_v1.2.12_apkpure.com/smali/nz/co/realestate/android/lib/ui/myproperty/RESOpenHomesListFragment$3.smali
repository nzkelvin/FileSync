.class Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$3;
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


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment$3;->this$0:Lnz/co/realestate/android/lib/ui/myproperty/RESOpenHomesListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    return-void
.end method
