.class Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$1;
.super Ljava/lang/Object;
.source "RESSearchRefineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;

    invoke-virtual {v0}, Lnz/co/realestate/android/lib/ui/searchrefine/RESSearchRefineFragment;->onRefineClick()V

    .line 54
    return-void
.end method
