.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;
.super Ljava/lang/Object;
.source "RESSearchListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->access$000(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;->access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
