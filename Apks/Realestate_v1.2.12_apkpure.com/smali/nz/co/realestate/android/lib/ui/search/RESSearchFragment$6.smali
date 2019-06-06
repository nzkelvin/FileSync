.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/event/JSAOnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->onShowSearchByListingDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

.field final synthetic val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    .prologue
    .line 286
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    iput-object p2, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEvent(Lnz/co/jsalibrary/android/event/events/JSAEvent;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    invoke-virtual {p0, p1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;->onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V

    return-void
.end method

.method public onEvent(Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;)V
    .locals 2
    .param p1, "event"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;

    .prologue
    .line 288
    invoke-virtual {p1}, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$6;->val$dialog:Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/dialog/JSATextInputDialog;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$200(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
