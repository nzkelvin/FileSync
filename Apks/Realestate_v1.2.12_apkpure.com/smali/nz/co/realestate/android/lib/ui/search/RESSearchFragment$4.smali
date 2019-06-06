.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$4;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 144
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$4;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$000(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)V

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method
