.class Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;
.super Ljava/lang/Object;
.source "RESSearchMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;


# direct methods
.method constructor <init>(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 119
    const-string v0, "Map ready"

    invoke-static {v0}, Lnz/co/jsalibrary/android/util/JSALogUtil;->d(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-static {v0, p1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->access$002(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 121
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    invoke-static {v0}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->access$100(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;)V

    .line 124
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment$1;->this$0:Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;->access$200(Lnz/co/realestate/android/lib/ui/searchlocation/RESSearchMapFragment;Z)V

    .line 125
    return-void
.end method
