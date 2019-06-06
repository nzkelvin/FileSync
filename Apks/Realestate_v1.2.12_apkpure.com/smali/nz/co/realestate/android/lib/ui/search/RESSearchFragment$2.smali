.class Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;
.super Ljava/lang/Object;
.source "RESSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 127
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$100(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "listingNumber":Ljava/lang/String;
    iget-object v1, p0, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment$2;->this$0:Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;

    invoke-static {v1, v0}, Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;->access$200(Lnz/co/realestate/android/lib/ui/search/RESSearchFragment;Ljava/lang/String;)V

    .line 131
    return-void
.end method
