.class Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;
.super Ljava/lang/Object;
.source "RESSearchMapActivityBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    .prologue
    .line 450
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 452
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$600(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->access$600(Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;)Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase$SendListingsRequestAsyncTask;->cancel(Z)Z

    .line 453
    :cond_0
    return-void
.end method
