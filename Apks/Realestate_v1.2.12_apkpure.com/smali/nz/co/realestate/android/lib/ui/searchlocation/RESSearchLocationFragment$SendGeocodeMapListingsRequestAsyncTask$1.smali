.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;
.super Ljava/lang/Object;
.source "RESSearchLocationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;)V
    .locals 0
    .param p1, "this$1"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    .prologue
    .line 245
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 247
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$500(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    iget-object v0, v0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;->access$500(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment;)Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->cancel(Z)Z

    .line 249
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask$1;->this$1:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchLocationFragment$SendGeocodeMapListingsRequestAsyncTask;->onPostExecute(Lnz/co/jsalibrary/android/location/JSAGeoBounds;)V

    goto :goto_0
.end method
