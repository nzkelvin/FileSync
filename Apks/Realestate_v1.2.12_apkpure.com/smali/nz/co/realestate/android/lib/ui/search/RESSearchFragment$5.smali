.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;
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
    .line 151
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 153
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    .line 154
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$100(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "listingNumber":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$5;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$200(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x1

    goto :goto_0
.end method
